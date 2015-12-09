#include <stdio.h>
#include "time.h"
#include "omp.h"

#include "emmintrin.h"
#include "nmmintrin.h"

#ifdef __INTELLISENSE__
	#ifndef __CUDACC__ 
		#define __CUDACC__
	#endif
#endif

#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <cuda.h>
#include <device_functions.h>
#include <cuda_runtime_api.h>
#include "math_functions.h"

#define N 512
#define RUNS 200

#define USE_STREAM 0

__constant__ int filter_laplace[5][5] = { 2, 4, 5, 4, 2,
4, 9, 12, 9, 4,
5, 12, 15, 12, 5,
4, 9, 12, 9, 4,
2, 4, 5, 4, 2 };

__constant__ float filter_laplace_f[5][5] = { 2.0f / 159, 4.0f / 159, 5.0f / 159, 4.0f / 159, 2.0f / 159,
4.0f / 159, 9.0f / 159, 12.0f / 159, 9.0f / 159, 4.0f / 159,
5.0f / 159, 12.0f / 159, 15.0f / 159, 12.0f / 159, 5.0f / 159,
4.0f / 159, 9.0f / 159, 12.0f / 159, 9.0f / 159, 4.0f / 159,
2.0f / 159, 4.0f / 159, 5.0f / 159, 4.0f / 159, 2.0f / 159 };



/*
 * most is kibővített kép van, 2-2 pixellel szélesebb és magasabb
 * egymástól független dolgokat kellene számolniuk, kimeneti pixelek eléggé függetlenek
 * threadIdx a blokkban, blockIdx a blokk helye -> innen a row és col (kibővített képen eltolással)
 */
__global__ void kernel_conv(unsigned char* gInput, unsigned char* gOutput, int imgWidthF)
{
	int row = blockIdx.y * blockDim.y + threadIdx.y + 2;
	int col = blockIdx.x * blockDim.x + threadIdx.x + 2;
	int pixel[3] = { 0, 0, 0 };

	// írási cím: (row*imgWidthF+col)*3
	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 5; j++) {
			for (int rgb = 0; rgb < 3; rgb++) {
				pixel[rgb] += gInput[((row + i - 2)*imgWidthF + (col + j - 2)) * 3 + rgb] * filter_laplace[i][j] / 159;
			}
		}
	}
	for (int rgb = 0; rgb < 3; rgb++) {
		pixel[rgb] = max(0, min(pixel[rgb], 255));
		pixel[rgb] = gInput[(row*imgWidthF + col) * 3 + rgb] - pixel[rgb];
		pixel[rgb] = max(0, min(pixel[rgb], 255));
		pixel[rgb] = gInput[(row*imgWidthF + col) * 3 + rgb] + pixel[rgb];
		pixel[rgb] = max(0, min(pixel[rgb], 255));
		gOutput[(row*imgWidthF + col) * 3 + rgb] = pixel[rgb];
	}
}

__global__ void kernel_conv_shrmem(unsigned char* gInput, unsigned char* gOutput, int imgWidthF)
{
	int row = blockIdx.y * blockDim.y + threadIdx.y + 2;
	int col = blockIdx.x * blockDim.x + threadIdx.x + 2;

	// base cím a cache töltéséhez
	int blockRow = blockIdx.y * blockDim.y;
	int blockCol = blockIdx.x * blockDim.x;

	// 20x20 méretű blokk és 3 csatorna
	__shared__ unsigned char blockData[20][20][3];

	// 1 dimeneziós 
	int id1d = threadIdx.y * 16 + threadIdx.x;
	if (id1d < 60) {
		// első 60 szál tölti az első sort, aztán a másodikat stb. összesen 60 bájt egy sor
		for (int cacheRow = 0; cacheRow < 20; cacheRow++) {
			// blockRow*imgWidthF+blockCol a 20x20-as cache blokk bal felső sarka az eredeti képen
			// cache soronként kell ebből lefelé menni (imgWidthF szorzás); és a 3 csatorna miatt x3
			// a sorokban a 60 bájtot már tudja kezelni az id1d változó
			blockData[cacheRow][id1d / 3][id1d % 3] = gInput[((blockRow + cacheRow)*imgWidthF + blockCol) * 3 + id1d];
		}
	}

	// mindenképp várni kell, mert a többi szál továbbmenne, ami nem tölt éppen
	__syncthreads();

	int pixel[3] = { 0, 0, 0 };
	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 5; j++) {
			for (int rgb = 0; rgb < 3; rgb++) {
				// threadIdx 16x16-ban mozog, a blockData 20x20 -> így 5x5 kernellel pont jól címzi
				pixel[rgb] += blockData[threadIdx.y + i][threadIdx.x + j][rgb] * filter_laplace[i][j] / 159;
			}
		}
	}
	for (int rgb = 0; rgb < 3; rgb++) {
		pixel[rgb] = max(0, min(pixel[rgb], 255));
		pixel[rgb] = blockData[threadIdx.y + 2][threadIdx.x + 2][rgb] - pixel[rgb];
		pixel[rgb] = max(0, min(pixel[rgb], 255));
		pixel[rgb] = blockData[threadIdx.y + 2][threadIdx.x + 2][rgb] + pixel[rgb];
		pixel[rgb] = max(0, min(pixel[rgb], 255));
		gOutput[(row*imgWidthF + col) * 3 + rgb] = pixel[rgb];
	}
}

// float accu, uint shmem
__global__ void kernel_convf_shrmem(unsigned char* gInput, unsigned char* gOutput, unsigned int imgWidthF)
{
	unsigned int row = blockIdx.y * blockDim.y + threadIdx.y + 2;
	unsigned int col = blockIdx.x * blockDim.x + threadIdx.x + 2;

	// base cím a cache töltéséhez
	unsigned int blockRow = blockIdx.y * blockDim.y;
	unsigned int blockCol = blockIdx.x * blockDim.x;

	// 20x20 méretű blokk és 3 csatorna
	__shared__ unsigned char blockData[3][20][20];

	// 1 dimeneziós 
	unsigned int id1d = threadIdx.y * 16 + threadIdx.x;
	if (id1d < 60) {
		// első 60 szál tölti az első sort, aztán a másodikat stb. összesen 60 bájt egy sor
		for (unsigned int cacheRow = 0; cacheRow < 20; cacheRow++) {
			// blockRow*imgWidthF+blockCol a 20x20-as cache blokk bal felső sarka az eredeti képen
			// cache soronként kell ebből lefelé menni (imgWidthF szorzás); és a 3 csatorna miatt x3
			// a sorokban a 60 bájtot már tudja kezelni az id1d változó
			blockData[id1d % 3][cacheRow][id1d / 3] = gInput[((blockRow + cacheRow)*imgWidthF + blockCol) * 3 + id1d];
		}
	}

	// mindenképp várni kell, mert a többi szál továbbmenne, ami nem tölt éppen
	__syncthreads();

	float pixel = 0;
	for (unsigned int rgb = 0; rgb < 3; rgb++)
	{
		pixel = 0;
		for (unsigned int i = 0; i < 5; i++) {
			for (unsigned int j = 0; j < 5; j++) {
				// threadIdx 16x16-ban mozog, a blockData 20x20 -> így 5x5 kernellel pont jól címzi
				pixel += blockData[rgb][threadIdx.y + i][threadIdx.x + j] * filter_laplace_f[i][j];
			}
		}
		gOutput[(row*imgWidthF + col) * 3 + rgb] = min(blockData[rgb][threadIdx.y + 2][threadIdx.x + 2] + max(0.f, blockData[rgb][threadIdx.y + 2][threadIdx.x + 2] - max(0.f, min(pixel, 255.f))), 255.f);
	}
}

// float accu, float shmem
__global__ void kernel_convf_shrmemf(unsigned char* gInput, unsigned char* gOutput, int imgWidthF)
{
	int row = blockIdx.y * blockDim.y + threadIdx.y + 2;
	int col = blockIdx.x * blockDim.x + threadIdx.x + 2;

	// base cím a cache töltéséhez
	int blockRow = blockIdx.y * blockDim.y;
	int blockCol = blockIdx.x * blockDim.x;

	// 20x20 méretű blokk és 3 csatorna
	__shared__ float blockData[3][20][20];

	// 1 dimeneziós 
	unsigned int id1d = threadIdx.y * 16 + threadIdx.x;
	if (id1d < 60) {
		// első 60 szál tölti az első sort, aztán a másodikat stb. összesen 60 bájt egy sor
		for (int cacheRow = 0; cacheRow < 20; cacheRow++) {
			// blockRow*imgWidthF+blockCol a 20x20-as cache blokk bal felső sarka az eredeti képen
			// cache soronként kell ebből lefelé menni (imgWidthF szorzás); és a 3 csatorna miatt x3
			// a sorokban a 60 bájtot már tudja kezelni az id1d változó
			
			blockData[id1d % 3][cacheRow][id1d/3] = gInput[((blockRow + cacheRow)*imgWidthF + blockCol) * 3 + id1d];
		}
	}

	// mindenképp várni kell, mert a többi szál továbbmenne, ami nem tölt éppen
	__syncthreads();

	float pixel[3] = { 0, 0, 0 };
	for (int i = 0; i < 5; i++) {
		for (int j = 0; j < 5; j++) {
			for (int rgb = 0; rgb < 3; rgb++) {
				// threadIdx 16x16-ban mozog, a blockData 20x20 -> így 5x5 kernellel pont jól címzi
				pixel[rgb] += blockData[rgb][threadIdx.y + i][threadIdx.x + j] * filter_laplace_f[i][j];
			}
		}
	}
	for (int rgb = 0; rgb < 3; rgb++) {
		pixel[rgb] = max(0.f, min(pixel[rgb], 255.f));
		pixel[rgb] = blockData[rgb][threadIdx.y + 2][threadIdx.x + 2] - pixel[rgb];
		pixel[rgb] = max(0.f, min(pixel[rgb], 255.f));
		pixel[rgb] = blockData[rgb][threadIdx.y + 2][threadIdx.x + 2] + pixel[rgb];
		pixel[rgb] = max(0.f, min(pixel[rgb], 255.f));
		gOutput[(row*imgWidthF + col) * 3 + rgb] = pixel[rgb];
	}
}

/*
 * hoszton futó kód, vannak benne cuda függvények is.
 * |R|G|B|R|G|B|R|G|B|, 8 bit unsigned számok sorban
 * GPU-n foglalt memória a kiterjesztett kép mérete
 */
void cudaMain(unsigned char *imgSrc, unsigned char *imgRes,
	int imgWidth, int imgHeight, int imgFOfssetW, int imgFOfssetH)
{
	clock_t s0, e0;
	double d0;

	cudaDeviceSetCacheConfig(cudaFuncCachePreferShared);

	int imgWidthF = imgWidth + 2 * imgFOfssetW;

	// kiterjesztett kép mérete, +3 x komponenens mérete
	int size = (imgWidth + 2 * imgFOfssetW)*(imgHeight + 2 * imgFOfssetH)*sizeof(unsigned char) * 3;

	unsigned char *gInput, *gOutput;
	float *gCoeff;
	// GPU mem foglalás; bemenetre és kimenetre is, memória pointereket ad vissza
	cudaMalloc((void**)&gInput, size);
	cudaMalloc((void**)&gOutput, size);
	cudaMalloc((void**)&gCoeff, 25 * sizeof(float));

	// kimeneti pixelek száma alapján; ezek lesznek párhuzamosítva
	// thread block-okból építünk gridet (blockban szálak)
	// összesen 1920x1200 pixel -> ennyi szál
	// blokkban elérhető a közös shared memória, őket lehet szinkronizálni expliciten
	// ha nem többszörösre jön ki a méret, akkor elágazás kell, és a szélső warpok lassabbak lesznek, a többi gyors
	dim3 thrBlock(16, 16);	// gpu függően 1024 stb. lehet. legkisebb csoport a warp, 32 szál, ezek SIMD módon mennek -> 32 többszöröse kell
	// első warp a 16x16-os blokk felső két sora
	// minden pixelt 25x olvasunk ki, cache segíti
	// beolvasható shared mem-be is, 16x16-os blokk 20x20 pixelt cache-elhet; 32 szál 32 különböző bankot olvasson (32 bank, 1 bank 4 bájt széles; ugyanazt a szót érdemes olvasni; első sor első bank lefed 0..14; 60 bájt)
	// kvázi folytonos címtartomány; 4 byte széles, b0|b1|...|b31|b0|...; unsigned char |0|1|2|3| @b0; 32x4 byte az első 32 bankban, 128. byte megint @bank0
	// 32 bank párhuzamosan olvasható, nagy sávszélesség, bank másik szavát ne bazgerálja másik szál. double v int64 esetén van bankütközés, itt nincs
	// ilyen tömb [y][x][rgb] -> [20][20][3]
	// 1. megoldás: sor=60 byte, első 60 szál betöltheti az első sort, 20 soron keresztül
	// 2.: 1. 60 szál és 2. 60 szál... összesen 4 sor egyszerre, 5-ös for ciklus kell csak

	// id1d = threadIdx.y*16+threadIdx.x a szálazonosító a blokkon belül, 60 alatt töltögethet; soronként teljes képszélességgel nő
	dim3 thrGrid(imgWidth / 16, imgHeight / 16);

	s0 = clock();
	cudaMemcpy(gInput, imgSrc, size, cudaMemcpyHostToDevice);
	for (int i = 0; i < RUNS; i++)
	{
		kernel_conv << <thrGrid, thrBlock >> >(gInput, gOutput, imgWidthF);
		cudaThreadSynchronize();
	}
	e0 = clock();
	d0 = static_cast<double>(e0 - s0) / CLOCKS_PER_SEC;
	printf("total CPU TIME: %4.4fs\n", d0);
	printf("1 cycle CPU TIME: %4.4fms\n", d0 * 1000 / RUNS);

	s0 = clock();
	cudaMemcpy(gInput, imgSrc, size, cudaMemcpyHostToDevice);
	for (int i = 0; i < RUNS; i++)
	{
		kernel_conv_shrmem << <thrGrid, thrBlock >> >(gInput, gOutput, imgWidthF);
		cudaThreadSynchronize();
	}
	e0 = clock();
	d0 = static_cast<double>(e0 - s0) / CLOCKS_PER_SEC;
	printf("total GPU TIME: %4.4fs\n", d0);
	printf("1 cycle GPU TIME: %4.4fms\n", d0 * 1000 / RUNS);

	
	s0 = clock();
	cudaMemcpy(gInput, imgSrc, size, cudaMemcpyHostToDevice);
	for (int i = 0; i < RUNS; i++)
	{
		kernel_convf_shrmem << <thrGrid, thrBlock >> >(gInput, gOutput, imgWidthF);
		cudaThreadSynchronize();
	}
	e0 = clock();
	d0 = static_cast<double>(e0 - s0) / CLOCKS_PER_SEC;
	printf("total GPU TIME: %4.4fs\n", d0);
	printf("1 cycle GPU TIME: %4.4fms\n", d0 * 1000 / RUNS);


	s0 = clock();
	cudaMemcpy(gInput, imgSrc, size, cudaMemcpyHostToDevice);
	for (int i = 0; i < RUNS; i++)
	{
		kernel_convf_shrmemf << <thrGrid, thrBlock >> >(gInput, gOutput, imgWidthF);
		cudaThreadSynchronize();
	}
	
	e0 = clock();
	d0 = static_cast<double>(e0 - s0) / CLOCKS_PER_SEC;
	printf("total GPU TIME: %4.4fs\n", d0);
	printf("1 cycle GPU TIME: %4.4fms\n", d0 * 1000 / RUNS);

	cudaMemcpy(imgRes, gOutput, size, cudaMemcpyDeviceToHost);
	cudaFree(gInput); cudaFree(gOutput);
	

	cudaDeviceReset();
}