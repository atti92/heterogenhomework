#include "memory.h"

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

#define USE_CUDA_MEMALLOC 0
#define USE_WC 0

void memalloc_host(int imgWidthF, int imgHeightF, unsigned char **input, unsigned char **output)
{
	cudaError_t cuda_ret;

#if USE_CUDA_MEMALLOC == 0
	*input   = (unsigned char *)malloc(3*imgWidthF*imgHeightF*sizeof(unsigned char));
	*output = (unsigned char *)malloc(3*imgWidthF*imgHeightF*sizeof(unsigned char));
#else
	#if USE_WC == 0
		cuda_ret = cudaHostAlloc(input, 3*imgWidthF*imgHeightF*sizeof(unsigned char), cudaHostAllocDefault);
	#else
		cuda_ret = cudaHostAlloc(input, 3*imgWidthF*imgHeightF*sizeof(unsigned char), cudaHostAllocWriteCombined);
	#endif
	cuda_ret = cudaHostAlloc(output, 3*imgWidthF*imgHeightF*sizeof(unsigned char), cudaHostAllocDefault);

#endif
}

void memfree_host(unsigned char **input, unsigned char **output)
{
	cudaError_t cuda_ret;

#if USE_CUDA_MEMALLOC == 0
	free(*input);
	free(*output);
#else
	cuda_ret = cudaFree(input);
	cuda_ret = cudaFree(output);
#endif
}