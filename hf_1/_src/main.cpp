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
	ILuint ilImg=0;
	ilGenImages(1, &ilImg);
	ilBindImage(ilImg);
    ilLoadImage(static_cast<const char*>("input.bmp"));
	auto imgData = ilGetData();

	auto imgWidth = ilGetInteger(IL_IMAGE_WIDTH);
	auto imgHeight = ilGetInteger(IL_IMAGE_HEIGHT);

	float *imgFloat;
	auto imgWidthF = imgWidth+FILTER_W-1;
	auto imgHeightF = imgHeight+FILTER_H-1;
	auto imgFOfssetW = (FILTER_W-1)/2;
	auto imgFOfssetH = (FILTER_H-1)/2;
	imgFloat   = static_cast<float *>(_aligned_malloc(4*imgWidthF*imgHeightF*sizeof(float), 16));
    int row, col, pixel;
	for (row=0; row<imgHeightF; row++)
	{
		for (col=0; col<imgWidthF;col++)
		{
			pixel = (row*imgWidthF + col)*4;
			*(imgFloat+pixel+0) = 0.0;
			*(imgFloat+pixel+1) = 0.0;
			*(imgFloat+pixel+2) = 0.0;
			*(imgFloat+pixel+3) = 0.0;
		}
	}
	int pixel_dst, pixel_src;
	for (row=0; row<imgHeight; row++)
	{
		for (col=0; col<imgWidth;col++)
		{
			pixel_dst = ((row+imgFOfssetH)*imgWidthF + (col+imgFOfssetW))*4;
			pixel_src = (row*imgWidth + col)*3;
			*(imgFloat+pixel_dst+0) = static_cast<float>(*(imgData+pixel_src+0));
			*(imgFloat+pixel_dst+1) = static_cast<float>(*(imgData+pixel_src+1));
			*(imgFloat+pixel_dst+2) = static_cast<float>(*(imgData+pixel_src+2));
			*(imgFloat+pixel_dst+3) = 0.0;
		}
	}


// IMAGE PROCESSING
//---------------------------------------------------------------------------------------
	clock_t s0, e0;
    double d0;

	float *imgFloatRes;
    imgFloatRes = static_cast<float *>(_aligned_malloc(4*imgWidthF*imgHeightF*sizeof(float), 16));

	float filter_gaussian[] = {2.0,  4.0,  5.0,  4.0,  2.0,
		                       4.0,  9.0, 12.0,  9.0,  4.0,
		                       5.0, 12.0, 15.0, 12.0,  5.0,
		                       4.0,  9.0, 12.0,  9.0,  4.0,
		                       2.0,  4.0,  5.0,  4.0,  2.0};

	for (size_t i = 0; i < 25; i++)
	{
		filter_gaussian[i] /= 159;
	}

    s0 = clock();
for (auto r=0; r<RUNS; r++)
{
    conv_filter_sse(imgHeight, imgWidth, imgHeightF, imgWidthF,
				imgFOfssetH, imgFOfssetW,
				filter_gaussian, imgFloat, imgFloatRes);
}
    e0 = clock();
    d0 = static_cast<double>(e0-s0)/CLOCKS_PER_SEC;
    printf("total CPU TIME: %4.4fs\n", d0);
    printf("1 cycle CPU TIME: %4.4fms\n", d0 * 1000 / RUNS);


	float *imgFloatWrite;
	imgFloatWrite = imgFloatRes;

//---------------------------------------------------------------------------------------
// IMAGE PROCESSING END

	for (row=0; row<imgHeight; row++)
	{
		for (col=0; col<imgWidth;col++)
		{
			pixel_src = ((row+imgFOfssetH)*imgWidthF + (col+imgFOfssetW))*4;
			pixel_dst = (row*imgWidth + col)*3;
			*(imgData+pixel_dst+0) = static_cast<ILubyte>(*(imgFloatWrite+pixel_src+0));
			*(imgData+pixel_dst+1) = static_cast<ILubyte>(*(imgFloatWrite+pixel_src+1));
			*(imgData+pixel_dst+2) = static_cast<ILubyte>(*(imgFloatWrite+pixel_src+2));
		}
	}


	_aligned_free(imgFloat);
    _aligned_free(imgFloatRes);

	ilSetData(imgData);
	ilEnable(IL_FILE_OVERWRITE);
    ilSaveImage(static_cast<const char*>("output.bmp"));
	ilDeleteImages(1, &ilImg);
}

