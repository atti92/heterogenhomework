#include "defs.h"
#include <algorithm>

void conv_filter(int imgHeight, int imgWidth, int imgHeightF, int imgWidthF,
				 int imgFOfssetH, int imgFOfssetW,
				 float *filter, unsigned char *imgSrc, unsigned char *imgDst)
{
#pragma omp parallel for
	for (int row=imgFOfssetH; row<(imgHeight+imgFOfssetH); row++)
	{
		for (int col=imgFOfssetW; col<(imgWidth+imgFOfssetW); col++)
		{
			int pixel_dst = (row*imgWidthF+col)*3;

			int fval[3] = { 0 };
			for (int fy = 0; fy < FILTER_H; fy++)
			{
				for (int fx = 0; fx < FILTER_W; fx++)
				{
					int pixel_src = ((row + fy - imgFOfssetH)*imgWidthF + col + fx - imgFOfssetW) * 3;
					for (int rgba = 0; rgba<3; rgba++)
					{
						fval[rgba] = fval[rgba] + *(filter + fy*FILTER_W + fx) * *(imgSrc + pixel_src + rgba);
					}
				}
			}

			for (int rgba = 0; rgba<3; rgba++)
			{
				// lehetne helyettük min-max függvény is, HW-en lehet gyorsabb, GPU tudja
				if (fval[rgba]>255.0) fval[rgba] = 255;
				if (fval[rgba] < 0.0)   fval[rgba] = 0;
				*(imgDst + pixel_dst + rgba) = (unsigned char)(fval[rgba]);
			}
		}
	}
}



/*void conv_filter_sse(int imgHeight, int imgWidth, int imgHeightF, int imgWidthF,
	int imgFOfssetH, int imgFOfssetW,
	float *filter, unsigned char *imgFloatSrc, unsigned char *imgFloatDst)
{

	//1.
	const register __declspec(align(16)) auto const_0 = _mm_setr_epi8(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
	//2.
	const register __declspec(align(16)) auto const_255 = _mm_setr_epi8(255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255);

	//3.
	__declspec(align(16)) __m128 filter_l[FILTER_SIZE];
//#pragma omp parallel for
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
	register __declspec(align(16)) __m128i a_sse;
	//8. reg
	register __declspec(align(16)) __m128i r_sse;

//#pragma omp parallel for
	for (auto row = 0; row < imgLengthbyte; row += 15)
	{
		// RGBA komponensek akkumulátora
		r_sse = _mm_setzero_si128();
		// konvolúció minden komponensre
		for (auto y = 0; y < FILTER_H; y++)
		{
			//r_sse = _mm_add_ps(r_sse, _mm_mul_ps(imgFloatSrc + row + (y * imgWidthFbyte)), filter_l[5 * y]));
			x_sse = _mm_load_si128(reinterpret_cast<__m128i*>(imgFloatSrc + row + y * imgWidthFbyte));
			_mm_add_epi16(r_sse, );
			r_sse = _mm_unpacklo_epi8(x_sse, v0);
			a_sse = _mm_unpackhi_epi8(x_sse, v0);
			//r_sse = _mm_add_ps(r_sse, _mm_mul_ps(_mm_load_ps(imgFloatSrc + row + (8 + y * imgWidthFbyte)), filter_l[2 + 5 * y]));
			//r_sse = _mm_add_ps(r_sse, _mm_mul_ps(_mm_load_ps(imgFloatSrc + row + (12 + y * imgWidthFbyte)), filter_l[3 + 5 * y]));
			//r_sse = _mm_add_ps(r_sse, _mm_mul_ps(_mm_load_ps(imgFloatSrc + row + (4 + y * imgWidthFbyte)), filter_l[1 + 5 * y]));
			//r_sse = _mm_add_ps(r_sse, _mm_mul_ps(_mm_load_ps(imgFloatSrc + row + (16 + y * imgWidthFbyte)), filter_l[4 + 5 * y]));
		}
		//számítás eredményének limitálása 0-255 közé
		r_sse = _mm_max_epi8(const_0, r_sse);
		r_sse = _mm_min_epi8(const_255, r_sse);

		a_sse = _mm_add_epi8(r_sse, _mm_loadu_si128(reinterpret_cast<__m128i*>(imgFloatSrc + row + 2 * imgWidthFbyte)));
		r_sse = _mm_add_epi8(a_sse, _mm_sub_epi8(a_sse, r_sse));

		r_sse = _mm_max_epi8(const_0, r_sse);
		r_sse = _mm_min_epi8(const_255, r_sse);

		// kimenetí pixel írása
		_mm_store_si128(reinterpret_cast<__m128i*>(imgFloatDst + rw_base + row), r_sse);
	}
}*/