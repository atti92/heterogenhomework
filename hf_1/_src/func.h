void conv_filter(int imgHeight, int imgWidth, int imgHeightF, int imgWidthF,
				 int imgFOfssetH, int imgFOfssetW,
				 float filter[5][5], float *imgFloatSrc, float *imgFloatDst);

void conv_filter_omp(int imgHeight, int imgWidth, int imgHeightF, int imgWidthF,
				 int imgFOfssetH, int imgFOfssetW,
				 float* filter, float *imgFloatSrc, float *imgFloatDst);

void conv_filter_sse(int imgHeight, int imgWidth, int imgHeightF, int imgWidthF,
				 int imgFOfssetH, int imgFOfssetW,
				 float* filter, float *imgFloatSrc, float *imgFloatDst);