void memalloc_host(int imgWidthF, int imgHeightF, unsigned char **input, unsigned char **output);

void memfree_host(unsigned char **input, unsigned char **output);

void cudaMain(unsigned char *imgFloatSrc, unsigned char* imgFloatRes, 
              int imgWidth, int imgHeight, int imgFOfssetW, int imgFOfssetH);

void conv_filter(int imgHeight, int imgWidth, int imgHeightF, int imgWidthF,
	int imgFOfssetH, int imgFOfssetW,
	float *filter, unsigned char *imgSrc, unsigned char *imgDst);

void conv_filter_sse(int imgHeight, int imgWidth, int imgHeightF, int imgWidthF,
	int imgFOfssetH, int imgFOfssetW,
	float *filter, unsigned char *imgFloatSrc, unsigned char *imgFloatDst);