#include <stdio.h>   
#include "time.h"
#include "omp.h"

#include "emmintrin.h"
#include "nmmintrin.h"

#define N 512
#define RUNS 1

#define USE_STREAM 0

__constant__ int filter_laplace[5][5] = {-1, -1, -1, -1, -1,
                                         -1, -1, -1, -1, -1,
                                         -1, -1, 24, -1, -1,
                                         -1, -1, -1, -1, -1,
                                         -1, -1, -1, -1, -1};

__constant__ float filter_laplace_f[5][5] = {-1.0f, -1.0f, -1.0f, -1.0f, -1.0f,
                                             -1.0f, -1.0f, -1.0f, -1.0f, -1.0f,
                                             -1.0f, -1.0f, 24.0f, -1.0f, -1.0f,
                                             -1.0f, -1.0f, -1.0f, -1.0f, -1.0f,
                                             -1.0f, -1.0f, -1.0f, -1.0f, -1.0f};

__global__ void kernel_conv(unsigned char* gInput, unsigned char* gOutput, int imgWidthF)
{
  int row = blockIdx.y * blockDim.y + threadIdx.y + 2;
  int col = blockIdx.x * blockDim.x + threadIdx.x + 2;
  
  int out_pix = (row*imgWidthF+col)*3;
  int pix_data[3] = {0, 0, 0};

  int in_pix = out_pix - 2*imgWidthF*3 - 2*1*3;
  #pragma unroll 5
  for (int fy=0; fy<5; fy++)
  {
      #pragma unroll 5
      for (int fx=0; fx<5; fx++)
      {
          #pragma unroll
          for (int rgba=0; rgba<3; rgba++)
          {
              pix_data[rgba] = pix_data[rgba] + (gInput[in_pix+rgba]*filter_laplace[fy][fx]);
          }
          in_pix=in_pix+3;
      }
      in_pix = in_pix + 3*imgWidthF - 5*1*3;
  }

  for (int rgba=0; rgba<3; rgba++)
  {
      pix_data[rgba] = min(pix_data[rgba], 255);
      pix_data[rgba] = max(pix_data[rgba],   0);
      gOutput[out_pix+rgba] = (unsigned char)(pix_data[rgba]);
  }
}


__global__ void kernel_conv_sh(unsigned char* gInput, unsigned char* gOutput, int imgWidthF)
{
  int row = blockIdx.y * blockDim.y + threadIdx.y + 2;
  int col = blockIdx.x * blockDim.x + threadIdx.x + 2;
  
  int out_pix = (row*imgWidthF+col)*3;
  int pix_data[3] = {0, 0, 0};

  __shared__ unsigned char in_shmem[3][20][20];

  int ld_base = (blockIdx.y * blockDim.y)*3*imgWidthF + (blockIdx.x * blockDim.x)*3;
  int thid_1d = 16*threadIdx.y + threadIdx.x;
  int ld_rgba = thid_1d%3;
  int ld_col  = thid_1d/3;
  if (thid_1d<3*20)
  {
	  #pragma unroll
	  for (int ld_row=0; ld_row<20; ld_row++)
	  {
		  in_shmem[ld_rgba][ld_row][ld_col] = gInput[ld_base + thid_1d];
		  ld_base = ld_base + imgWidthF*3;
	  }
  }
  __syncthreads();

  #pragma unroll 5
  for (int fy=0; fy<5; fy++)
  {
      #pragma unroll 5
      for (int fx=0; fx<5; fx++)
      {
		  int coeff =  filter_laplace[fy][fx];
          #pragma unroll
          for (int rgba=0; rgba<3; rgba++)
          {
			  int pix = (int)(in_shmem[rgba][threadIdx.y+fy][threadIdx.x+fx]);
              pix_data[rgba] = pix_data[rgba] + (coeff * pix);
          }
      }
  }

  for (int rgba=0; rgba<3; rgba++)
  {
      pix_data[rgba] = min(pix_data[rgba], 255);
      pix_data[rgba] = max(pix_data[rgba],   0);
      gOutput[out_pix+rgba] = (unsigned char)(pix_data[rgba]);
  }
}


__global__ void kernel_conv_sh_f(unsigned char* gInput, unsigned char* gOutput, int imgWidthF)
{
	int row = blockIdx.y * blockDim.y + threadIdx.y + 2;
	int col = blockIdx.x * blockDim.x + threadIdx.x + 2;

	int out_pix = (row*imgWidthF + col) * 3;
	float pix_data[3] = { 0.0f, 0.0f, 0.0f };

	__shared__ unsigned char in_shmem[3][20][20];

	int ld_base = (blockIdx.y * blockDim.y) * 3 * imgWidthF + (blockIdx.x * blockDim.x) * 3;
	int thid_1d = 16 * threadIdx.y + threadIdx.x;
	int ld_rgba = thid_1d % 3;
	int ld_col = thid_1d / 3;
	if (thid_1d<3 * 20)
	{
#pragma unroll
		for (int ld_row = 0; ld_row<20; ld_row++)
		{
			in_shmem[ld_rgba][ld_row][ld_col] = gInput[ld_base + thid_1d];
			ld_base = ld_base + imgWidthF * 3;
		}
	}
	__syncthreads();

#pragma unroll 5
	for (int fy = 0; fy<5; fy++)
	{
#pragma unroll 5
		for (int fx = 0; fx<5; fx++)
		{
			float coeff = filter_laplace_f[fy][fx];
#pragma unroll
			for (int rgba = 0; rgba<3; rgba++)
			{
				float pix = (float)(in_shmem[rgba][threadIdx.y + fy][threadIdx.x + fx]);
				pix_data[rgba] = pix_data[rgba] + (coeff * pix);
			}
		}
	}

	for (int rgba = 0; rgba<3; rgba++)
	{
		pix_data[rgba] = min(pix_data[rgba], 255.0f);
		pix_data[rgba] = max(pix_data[rgba], 0.0f);
		gOutput[out_pix + rgba] = (unsigned char)(pix_data[rgba]);
	}
}


__global__ void kernel_conv_sh_f2(unsigned char* gInput, unsigned char* gOutput, int imgWidthF)
{
	int row = blockIdx.y * blockDim.y + threadIdx.y + 2;
	int col = blockIdx.x * blockDim.x + threadIdx.x + 2;

	int out_pix = (row*imgWidthF + col) * 3;
	float pix_data[3] = { 0.0f, 0.0f, 0.0f };

	__shared__ float in_shmem[3][20][48];

	int ld_base = (blockIdx.y * blockDim.y) * 3 * imgWidthF + (blockIdx.x * blockDim.x) * 3;
	int thid_1d = 16 * threadIdx.y + threadIdx.x;
	int ld_rgba = thid_1d % 3;
	int ld_col = thid_1d / 3;
	if (thid_1d<3 * 20)
	{
#pragma unroll
		for (int ld_row = 0; ld_row<20; ld_row++)
		{
			in_shmem[ld_rgba][ld_row][ld_col] = (float)gInput[ld_base + thid_1d];
			ld_base = ld_base + imgWidthF * 3;
		}
	}
	__syncthreads();

#pragma unroll 5
	for (int fy = 0; fy<5; fy++)
	{
#pragma unroll 5
		for (int fx = 0; fx<5; fx++)
		{
			float coeff = filter_laplace_f[fy][fx];
#pragma unroll
			for (int rgba = 0; rgba<3; rgba++)
			{
				float pix = in_shmem[rgba][threadIdx.y + fy][threadIdx.x + fx];
				pix_data[rgba] = pix_data[rgba] + (coeff * pix);
			}
		}
	}

	for (int rgba = 0; rgba<3; rgba++)
	{
		pix_data[rgba] = min(pix_data[rgba], 255.0f);
		pix_data[rgba] = max(pix_data[rgba], 0.0f);
		gOutput[out_pix + rgba] = (unsigned char)(pix_data[rgba]);
	}
}

__global__ void kernel_conv_sh_f2m(unsigned char* gInput, unsigned char* gOutput, int imgWidthF)
{
	int row = blockIdx.y * blockDim.y + threadIdx.y + 2;
	int col = (blockIdx.x * blockDim.x + threadIdx.x)*2 + 2;
	int out_pix = (row*imgWidthF + col) * 3;
	
	float pix_data0[3] = { 0.0f, 0.0f, 0.0f };
	float pix_data1[3] = { 0.0f, 0.0f, 0.0f };
	float coeff1;
	float coeff0;
	float pix;

	__shared__ float in_shmem[3][20][49];

	int ld_base = (blockIdx.y * blockDim.y) * 3 * imgWidthF + (blockIdx.x * blockDim.x) * 3 * 2;
	int thid_1d = 16 * threadIdx.y + threadIdx.x;
	int ld_rgba = thid_1d % 3;
	int ld_col = thid_1d / 3;
	if (thid_1d<3 * 36)
	{
#pragma unroll
		for (int ld_row = 0; ld_row<20; ld_row++)
		{
			in_shmem[ld_rgba][ld_row][ld_col] = (float)gInput[ld_base + thid_1d];
			ld_base = ld_base + imgWidthF * 3;
		}
	}
	__syncthreads();

	int sh_load_base_x = threadIdx.x * 2;

#pragma unroll 5
	for (int fy = 0; fy<5; fy++)
	{
		coeff0 = filter_laplace_f[fy][0];
		
		#pragma unroll
		for (int rgba = 0; rgba < 3; rgba++)
		{
			pix = in_shmem[rgba][threadIdx.y + fy][sh_load_base_x + 0];
			pix_data0[rgba] = pix_data0[rgba] + (coeff0 * pix);
		}
		
		#pragma unroll
		for (int fx = 1; fx<5; fx++)
		{
			coeff0 = filter_laplace_f[fy][fx];
			coeff1 = coeff0;
			
			#pragma unroll
			for (int rgba = 0; rgba<3; rgba++)
			{
				pix = in_shmem[rgba][threadIdx.y + fy][sh_load_base_x + fx];
				pix_data0[rgba] = pix_data0[rgba] + (coeff0 * pix);
				pix_data1[rgba] = pix_data1[rgba] + (coeff1 * pix);
			}
		}
		
		coeff1 = coeff0;
		#pragma unroll
		for (int rgba = 0; rgba < 3; rgba++)
		{
			pix = in_shmem[rgba][threadIdx.y + fy][sh_load_base_x + 5];
			pix_data1[rgba] = pix_data1[rgba] + (coeff1 * pix);
		}
	}

	#pragma unroll
	for (int rgba = 0; rgba<3; rgba++)
	{
		pix_data0[rgba] = min(pix_data0[rgba], 255.0f);
		pix_data0[rgba] = max(pix_data0[rgba], 0.0f);
		pix_data1[rgba] = min(pix_data1[rgba], 255.0f);
		pix_data1[rgba] = max(pix_data1[rgba], 0.0f);
		gOutput[out_pix + rgba] = (unsigned char)(pix_data0[rgba]);
		gOutput[out_pix + 3 + rgba] = (unsigned char)(pix_data1[rgba]);
	}
}

void cudaMain(unsigned char *imgSrc, unsigned char *imgRes, 
              int imgWidth, int imgHeight, int imgFOfssetW, int imgFOfssetH)
{
    clock_t s0, e0, s1, e1;
    double d0, d1;


    int imgWidthF  = imgWidth+2*imgFOfssetW;
    int imgHeightF = imgHeight+2*imgFOfssetH;

    int size = (imgWidth+2*imgFOfssetW)*(imgHeight+2*imgFOfssetH)*sizeof(unsigned char)*3;

    unsigned char *gInput, *gOutput;
	float *gCoeff;
	cudaMalloc((void**)&gInput, size);
	cudaMalloc((void**)&gOutput, size);
	cudaMalloc((void**)&gCoeff, 25*sizeof(float));


#if USE_STREAM == 0
	dim3 thrBlock(16, 16);
    dim3 thrGrid(imgWidth/16, imgHeight/16);
	dim3 thrGrid2(imgWidth / (16*2), imgHeight / 16);

	s0 = clock();
    cudaMemcpy(gInput, imgSrc, size, cudaMemcpyHostToDevice); 

	cudaDeviceSetCacheConfig(cudaFuncCachePreferL1);
	kernel_conv <<<thrGrid, thrBlock>>>(gInput, gOutput, imgWidthF);

	cudaDeviceSetCacheConfig(cudaFuncCachePreferShared);
	kernel_conv_sh <<<thrGrid, thrBlock>>>(gInput, gOutput, imgWidthF);
    kernel_conv_sh_f <<<thrGrid, thrBlock>>>(gInput, gOutput, imgWidthF);
	kernel_conv_sh_f2 << <thrGrid, thrBlock >> >(gInput, gOutput, imgWidthF);
	kernel_conv_sh_f2m << <thrGrid2, thrBlock >> >(gInput, gOutput, imgWidthF);
    
	cudaThreadSynchronize();
    
    cudaMemcpy(imgRes, gOutput, size, cudaMemcpyDeviceToHost);
	e0 = clock();
#else
	dim3 thrBlock(16, 16);
    dim3 thrGrid(imgWidth/16, imgHeight/(16*2));
	
	int cpy_offset, cpy_size;

	s0 = clock();
	
	cudaStream_t stream[2]; 
	for (int i = 0; i < 2; ++i) 
		cudaStreamCreate(&stream[i]); 
	
	for (int i = 0; i < 2; ++i)
	{
		cpy_offset = i*(imgWidthF*(imgHeight/2-2)*3;
		cpy_size   = imgWidthF*(imgHeight/2+4)*3;
		cudaMemcpyAsync(gInput+cpy_offset, imgSrc+cpy_offset, size, cudaMemcpyHostToDevice, stream[i]); 
	}
	
	for (int i = 0; i < 2; ++i) 
		kernel_conv <<<thrGrid, thrBlock>>>(gInput, gOutput, imgWidthF);
	
	for (int i = 0; i < 2; ++i)
	{
		cpy_offset = i*(imgWidthF*(imgHeight/2-2)*3;
		cpy_size   = imgWidthF*(imgHeight/2+4)*3;
		cudaMemcpyAsync(imgRes+offset, gOutput+offset, size, cudaMemcpyDeviceToHost, stream[i]); 
	}
	
	cudaThreadSynchronize();
	e0 = clock();
#endif

    //cudaMemcpy(imgRes, gOutput, size, cudaMemcpyDeviceToHost);

    cudaFree(gInput); cudaFree(gOutput);

	cudaDeviceReset();

    d0 = (double)(e0-s0)/(CLOCKS_PER_SEC*RUNS);
    printf("CUDA kernel time: %4.4f\n", d0);
}