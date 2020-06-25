#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/time.h>
#define SIZE		100000
#define BENCHNUM	5
void *src;
void *dst;

int basic_1_size[BENCHNUM] = {1,2,4,8,63};
int basic_2_size[BENCHNUM] = {0x11000,99999,0xfff,0xc000,0x10000};

int basic_1_src_offset[BENCHNUM] = {0x10,0x20,0xcc30,0x38,0x3778};
int basic_2_src_offset[BENCHNUM] = {0x88,0x1124,0x65c,0x8,0x888};

int basic_1_dst_offset[BENCHNUM] = {0x10c,0x1124,0x65c,0x8,0x88};
int basic_2_dst_offset[BENCHNUM] = {0x8,0x20,0xcc00,0x38,0x38};


void *
mymemcpy(void *dest, const void *src, size_t n);

void
InitSrcArea(int size){
	src = (void *)malloc(SIZE * sizeof(char));
	char *psrc = (char *)src;
	while(size){
		*psrc = size;
		size--;
		psrc++;
	}
}


void *
char_memcpy(void *dest, const void *src, size_t n){
	char *tmp = dest;
	while(n){
		*tmp++ = (char *)src++;
		n--;
	}
	return dest;
}

int
check(char *dest, const char *src, size_t n){
	while(n){
		// printf("[%d:%d]",*dest,*src);
		if(*dest != *src){
			return 0;
		}
		dest++;
		src++;
		n--;
	}
	return 1;
}

int
main(){
	int i = 0;
	int pass = 0;
	struct timeval tv1, tv2;
	void *adst;
	dst = (void *)malloc(SIZE * sizeof(char));
	InitSrcArea(SIZE);
	gettimeofday(&tv1, NULL);
	// Basic1 benchmark (all aligned)
	for(i = 0;i < BENCHNUM;i++){
		pass = 0;
		gettimeofday(&tv1, NULL);
		adst = mymemcpy(dst + basic_1_dst_offset[i],
			        src + basic_1_src_offset[i],
			        basic_1_size[i]);
		gettimeofday(&tv2, NULL);
		pass = (adst == dst + basic_1_dst_offset[i]) &&
		       (check(dst + basic_1_dst_offset[i],
			      src + basic_1_src_offset[i],
			      basic_1_size[i])
			== 1);
		printf("Test (basic #1) %d / 5: Prod: %x --> %x, size = %d.\n",i+1,src + basic_1_src_offset[i],dst + basic_1_dst_offset[i],basic_1_size[i]);
		printf("[Mine] %s time: %u.\n\n", pass ? "pass" : "fail", tv2.tv_usec - tv1.tv_usec + (tv2.tv_sec - tv1.tv_sec) * 1000);
		memset(dst,0,SIZE);
	}
	// Basic2 benchmark (all aligned)
	for(i = 0;i < BENCHNUM;i++){
		pass = 0;
		gettimeofday(&tv1, NULL);
		gettimeofday(&tv1, NULL);
		adst = mymemcpy(dst + basic_2_dst_offset[i],
			        src + basic_2_src_offset[i],
			        basic_2_size[i]);
		gettimeofday(&tv2, NULL);
		pass = (adst == dst + basic_2_dst_offset[i]) &&
		       (check(dst + basic_2_dst_offset[i],
			      src + basic_2_src_offset[i],
			      basic_2_size[i])
			== 1);
		printf("Test (basic #2) %d / 5: Prod: %x --> %x, size = %d.\n",i+1,src + basic_2_src_offset[i],dst + basic_2_dst_offset[i],basic_2_size[i]);
		printf("[Mine] %s time: %u.\n", pass ? "pass" : "fail", tv2.tv_usec - tv1.tv_usec);
		memset(dst,0,SIZE);
		gettimeofday(&tv1, NULL);
		memcpy(dst + basic_2_dst_offset[i],
		       src + basic_2_src_offset[i],
		       basic_2_size[i]);
		gettimeofday(&tv2, NULL);
		printf("[CLIB]      time: %u.\n",tv2.tv_usec - tv1.tv_usec);
		memset(dst,-1,SIZE);
		gettimeofday(&tv1, NULL);
		char_memcpy(dst + basic_2_dst_offset[i],
		       src + basic_2_src_offset[i],
		       basic_2_size[i]);
		gettimeofday(&tv2, NULL);
		printf("[NORM]      time: %u.\n\n",tv2.tv_usec - tv1.tv_usec);
		memset(dst,0,SIZE);
	}
	// Medium1 benchmark (src unaligned)

	// Medium2 benchmark (dest unaligned)

	// Advanced benchmark (src & dest unaligned)
	return 0;
}
