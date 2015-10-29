#include "omp.h"

#include "emmintrin.h"
#include "nmmintrin.h"

#include "defs.h"
#include <corecrt_memcpy_s.h>

void conv_filter(int imgHeight, int imgWidth, int imgHeightF, int imgWidthF,
				 int imgFOfssetH, int imgFOfssetW,
				 float *filter, float *imgFloatSrc, float *imgFloatDst)
{
	auto rw_base = (imgFOfssetW + imgFOfssetH * imgWidthF) * 4;
	auto imgWidthbyte = imgWidth * 4;
	auto imgWidthFbyte = imgWidthF * 4;
	auto imgLengthbyte = imgHeight * imgWidthbyte;
	// 0 <= row < 1200
#pragma omp parallel for
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
					for (auto rgba = 0; rgba < 4; rgba++)
					{
						fval[rgba] += filter[x + y * 5] * imgFloatSrc[(x + y * imgWidthF) * 4 + col + row + rgba];
					}
				}
			}
			for (auto rgba = 0; rgba < 4; rgba++)
			{
				//fval[rgba] < 0 ? fval[rgba] = 0 : fval[rgba] > 255 ? fval[rgba] = 255 : 0;
				fval[rgba] = fval[rgba] < 0 ? 0 : fval[rgba] > 255 ? 255 : fval[rgba];
			}
			// kimenetí pixel írása
			memcpy(imgFloatDst + rw_base + col + row, fval, 4 * sizeof(float));
		}
	}
}


void conv_filter_sse(int imgHeight, int imgWidth, int imgHeightF, int imgWidthF,
				 int imgFOfssetH, int imgFOfssetW,
				 float *filter, float *imgFloatSrc, float *imgFloatDst)
{

	//1.
	const __declspec(align(16)) auto const_0 = _mm_set_ps(0.0, 0.0, 0.0, 0.0);
	//2.
    const __declspec(align(16)) auto const_255 = _mm_set_ps(255.0, 255.0, 255.0, 255.0);

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
	__declspec(align(16)) __m128 a_sse;
	//5.
	__declspec(align(16)) __m128 b_sse;
	//6.
	__declspec(align(16)) __m128 c_sse;
	//7.
	__declspec(align(16)) __m128 d_sse;
	//8. reg
	__declspec(align(16)) __m128 r_sse;

#pragma omp parallel for
	for (auto row = 0; row < imgLengthbyte; row += imgWidthFbyte)
	{
		// 0 <= col < 1920
		for (auto col = 0; col < imgWidthbyte; col += 4)
		{
			// RGBA komponensek akkumulátora
			r_sse = _mm_setzero_ps();
			// konvolúció minden komponensre
			for (auto y = 0; y < 5; y++ )
			{
				a_sse = _mm_load_ps(imgFloatSrc + row + col + (y * imgWidthF << 2));
				b_sse = _mm_load_ps(imgFloatSrc + row + col + (1 + y * imgWidthF << 2));
				c_sse = _mm_load_ps(imgFloatSrc + row + col + (2 + y * imgWidthF << 2));
				d_sse = _mm_load_ps(imgFloatSrc + row + col + (3 + y * imgWidthF << 2));
				
				r_sse = _mm_add_ps(r_sse, _mm_mul_ps(a_sse, filter_l[y * 5]));
				r_sse = _mm_add_ps(r_sse, _mm_mul_ps(b_sse, filter_l[1 + y * 5]));
				r_sse = _mm_add_ps(r_sse, _mm_mul_ps(c_sse, filter_l[2 + y * 5]));
				r_sse = _mm_add_ps(r_sse, _mm_mul_ps(d_sse, filter_l[3 + y * 5]));

				a_sse = _mm_load_ps(imgFloatSrc + row + col + (4 + y * imgWidthF << 2));
				r_sse = _mm_add_ps(r_sse, _mm_mul_ps(a_sse, filter_l[4 + y * 5]));
			}
			//számítás eredményének limitálása 0-255 közé
			r_sse = _mm_max_ps(const_0, r_sse);
			r_sse = _mm_min_ps(const_255, r_sse);

			// kimenetí pixel írása
			_mm_store_ps(imgFloatDst + rw_base + col + row, r_sse);
		}
	}
}