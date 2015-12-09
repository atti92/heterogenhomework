// lab1.cpp : Defines the entry point for the console application.
//

//#include "stdafx.h"
#include "memory.h"
#include "time.h"

#include "omp.h"

#include <IL/ilut.h>
#include <IL/ilu.h>

#include "emmintrin.h"
#include "nmmintrin.h"

#include "defs.h"
#include "func.h"


void main()
{
	ilInit(); iluInit();
	ILboolean ret;
	ILuint ilImg=0;
	ilGenImages(1, &ilImg);
	ilBindImage(ilImg);
    ret = ilLoadImage((const char*)("input.bmp"));
	ILubyte* imgData = ilGetData(); 

	int imgWidth = ilGetInteger(IL_IMAGE_WIDTH);
	int imgHeight = ilGetInteger(IL_IMAGE_HEIGHT);
	ILint imgOrigin = ilGetInteger(IL_ORIGIN_MODE);



	int imgWidthF = imgWidth+FILTER_W-1;
	int imgHeightF = imgHeight+FILTER_H-1;
	int imgFOfssetW = (FILTER_W-1)/2;
	int imgFOfssetH = (FILTER_H-1)/2;
	int row, col;
	
// Host memória foglalás
	unsigned char *imgSrc;
	unsigned char *imgRes;

	memalloc_host(imgWidthF, imgHeightF, &imgSrc, &imgRes);

	for (row=0; row<imgHeightF; row++)
	{
		for (col=0; col<imgWidthF;col++)
		{
			int pixel = (row*imgWidthF + col)*3;
			*(imgSrc+pixel+0) = 0;
			*(imgSrc+pixel+1) = 0;
			*(imgSrc+pixel+2) = 0;

			*(imgRes+pixel+0) = 0;
			*(imgRes+pixel+1) = 0;
			*(imgRes+pixel+2) = 0;
		}
	}

	for (row=0; row<imgHeight; row++)
	{
		for (col=0; col<imgWidth;col++)
		{
			int pixel_dst = ((row+imgFOfssetH)*imgWidthF + (col+imgFOfssetW))*3;
			int pixel_src = (row*imgWidth + col)*3;
			*(imgSrc+pixel_dst+0) = (unsigned char)(*(imgData+pixel_src+0));
			*(imgSrc+pixel_dst+1) = (unsigned char)(*(imgData+pixel_src+1));
			*(imgSrc+pixel_dst+2) = (unsigned char)(*(imgData+pixel_src+2));
		}
	}


// IMAGE PROCESSING
//---------------------------------------------------------------------------------------
	clock_t s0, e0;
    double d0;


float filter_gaussian[] = {2.0,  4.0,  5.0,  4.0,  2.0,
		                       4.0,  9.0, 12.0,  9.0,  4.0,
		                       5.0, 12.0, 15.0, 12.0,  5.0,
		                       4.0,  9.0, 12.0,  9.0,  4.0,
		                       2.0,  4.0,  5.0,  4.0,  2.0};

	float filter_laplace[] = {	1.0,  4.0,  6.0,  4.0,  1.0,
								4.0, 16.0, 24.0, 16.0,  4.0,
								6.0, 24.0,-476.0,24.0,  6.0,
								4.0, 16.0, 24.0, 16.0,  4.0,
								1.0,  4.0,  6.0,  4.0,  1.0 };

	for (size_t i = 0; i < 25; i++)
	{
		filter_laplace[i] /= -256;
	}
	for (size_t i = 0; i < 25; i++)
	{
		filter_gaussian[i] /= 159;
	}
    s0 = clock();
for (auto r=0; r<10; r++)
{
	conv_filter(imgHeight, imgWidth, imgHeightF, imgWidthF,
		imgFOfssetH, imgFOfssetW,
		filter_laplace, imgSrc, imgRes);
}
    e0 = clock();
    d0 = static_cast<double>(e0-s0)/CLOCKS_PER_SEC;
    printf("total CPU TIME: %4.4fs\n", d0);
    printf("1 cycle CPU TIME: %4.4fms\n", d0 * 1000 / 10);
    cudaMain(imgSrc, imgRes, imgWidth, imgHeight, imgFOfssetW, imgFOfssetH);

	unsigned char *imgResWrite;
	imgResWrite = imgRes;

//---------------------------------------------------------------------------------------
// IMAGE PROCESSING END


	for (row=0; row<imgHeight; row++)
	{
		for (col=0; col<imgWidth;col++)
		{
			int pixel_src = ((row+imgFOfssetH)*imgWidthF + (col+imgFOfssetW))*3;
			int pixel_dst = (row*imgWidth + col)*3;
			*(imgData+pixel_dst+0) = (ILubyte)(*(imgResWrite+pixel_src+0));
			*(imgData+pixel_dst+1) = (ILubyte)(*(imgResWrite+pixel_src+1));
			*(imgData+pixel_dst+2) = (ILubyte)(*(imgResWrite+pixel_src+2));
		}
	}

	ret = ilSetData(imgData);
	ilEnable(IL_FILE_OVERWRITE);

    ilSaveImage((const char*)("output.bmp"));
	ilDeleteImages(1, &ilImg);

	memfree_host(&imgSrc, &imgRes);
}

