#include "omp.h"

#include "emmintrin.h"
#include "nmmintrin.h"

#include "defs.h"
#include <corecrt_memcpy_s.h>

void conv_filter(int imgHeight, int imgWidth, int imgHeightF, int imgWidthF,
				 int imgFOfssetH, int imgFOfssetW,
				 float filter[5][5], float *imgFloatSrc, float *imgFloatDst)
{
	auto rw_base = (imgFOfssetW + imgFOfssetH * imgWidthF) * 4;
	auto imgWidthbyte = imgWidth * 4;
	auto imgWidthFbyte = imgWidthF * 4;
	auto imgLengthbyte = imgHeight * imgWidthbyte;

	// 0 <= row < 1200
	for (auto row = 0; row < imgLengthbyte; row+=imgWidthFbyte)
	{
		// 0 <= col < 1920
		for (auto col = 0; col < imgWidthbyte; col+=4)
		{
			// RGBA komponensek akkumulátora
			float fval[4] = {0.0f, 0.0f, 0.0f, 0.0f};
			
			// konvolúció minden komponensre
			for (auto y = 0; y < 5; y++)
			{
				for (auto x = 0; x < 5; x++)
				{
					for (auto rgba = 0; rgba < 3; rgba++)
					{
						fval[rgba] += filter[y][x] * imgFloatSrc[(x + y * imgWidthF) * 4 + col + row + rgba];
					}
				}
			}
			for (auto rgba = 0; rgba < 3; rgba++)
			{
				auto orig = imgFloatSrc[(2 + 2 * imgWidthF) * 4 + col + row + rgba];
				fval[rgba] = fval[rgba] < 0.0f ? 0.0f : fval[rgba] > 255.0f ? 255.0f : fval[rgba];
				fval[rgba] = orig - fval[rgba];
				fval[rgba] = fval[rgba] < 0.0f ? 0.0f : fval[rgba] > 255.0f ? 255.0f : fval[rgba];
				fval[rgba] = orig + fval[rgba];
				fval[rgba] = fval[rgba] < 0.0f ? 0.0f : fval[rgba] > 255.0f ? 255.0f : fval[rgba];
			}	
			// kimenetí pixel írása
			memcpy(imgFloatDst + rw_base + col + row, fval, 4 * sizeof(float));
		}
	}
}


void conv_filter_sse(int imgHeight, int imgWidth, int imgHeightF, int imgWidthF,
				 int imgFOfssetH, int imgFOfssetW,
				 float* filter, float *imgFloatSrc, float *imgFloatDst)
{

	//1.
	const register __declspec(align(16)) auto const_0 = _mm_set_ps(0.0, 0.0, 0.0, 0.0);
	//2.
    const register __declspec(align(16)) auto const_255 = _mm_set_ps(255.0, 255.0, 255.0, 255.0);

	//3.
	__declspec(align(16)) __m128 filter_l[FILTER_SIZE];
#pragma omp parallel for
	for (auto i = 0; i < FILTER_SIZE; i++)
	{
		//mind a 4 floatba ugyanazt tölti
		// float -> m128 konverzió
		filter_l[i] = _mm_load_ps1(filter + i);
	}
	const auto rw_base = (imgFOfssetW + imgFOfssetH * imgWidthF) << 2;
	const auto imgWidthbyte = imgWidth << 2;
	const auto imgWidthFbyte = imgWidthF << 2;
	const auto imgLengthbyte = imgHeight * imgWidthbyte;
	//4.
	register __declspec(align(16)) __m128 a_sse;
	//8. reg
	register __declspec(align(16)) __m128 r_sse;

#pragma omp parallel for
	for (auto row = 0; row < imgLengthbyte; row += 4)
	{
		// RGBA komponensek akkumulátora
		r_sse = _mm_setzero_ps();
		// konvolúció minden komponensre
		for (auto y = 0; y < FILTER_H; y++ )
		{		
			r_sse = _mm_add_ps(r_sse, _mm_mul_ps(_mm_load_ps(imgFloatSrc + row + (y * imgWidthFbyte)), filter_l[5 * y]));
			r_sse = _mm_add_ps(r_sse, _mm_mul_ps(_mm_load_ps(imgFloatSrc + row + (4 + y * imgWidthFbyte)), filter_l[1 + 5 * y]));
			r_sse = _mm_add_ps(r_sse, _mm_mul_ps(_mm_load_ps(imgFloatSrc + row + (8 + y * imgWidthFbyte)), filter_l[2 + 5 * y]));
			r_sse = _mm_add_ps(r_sse, _mm_mul_ps(_mm_load_ps(imgFloatSrc + row + (12 + y * imgWidthFbyte)), filter_l[3 + 5 * y]));
			r_sse = _mm_add_ps(r_sse, _mm_mul_ps(_mm_load_ps(imgFloatSrc + row + (16 + y * imgWidthFbyte)), filter_l[4 + 5 * y]));
		}
			
		a_sse = _mm_load_ps(imgFloatSrc + row + 8 + 2 * imgWidthFbyte);
		//számítás eredményének limitálása 0-255 közé
		// kimenetí pixel írása
		_mm_store_ps(imgFloatDst + rw_base + row, _mm_min_ps(const_255, _mm_add_ps(a_sse, _mm_max_ps(const_0, _mm_sub_ps(a_sse, _mm_min_ps(const_255, _mm_max_ps(const_0, r_sse)))))));
	}
}