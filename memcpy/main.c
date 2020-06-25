#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/time.h>
#define SIZE		100000
#define BENCHNUM	5
void *src;
void *dst;

int basic_1_size[BENCHNUM] = {1,2,4,8,64};
int basic_2_size[BENCHNUM] = {0xcccc,0xffff,0xfff,0xc000,0x10000};

int basic_1_src_offset[BENCHNUM] = {0x10,0x20,0xcc30,0x38,0x3778};
int basic_2_src_offset[BENCHNUM] = {0x10c,0x1124,0x65c,0x8,0x888};

int basic_1_dst_offset[BENCHNUM] = {0x10c,0x1124,0x65c,0x8,0x88};
int basic_2_dst_offset[BENCHNUM] = {0x1000,0x20,0xcc00,0x38,0x38};


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
memcpy(void *dest, const void *src, size_t n){
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
		printf("[Mine] Test (basic #1) %d / 5: %s,time: %u.\n",i+1, pass ? "pass" : "fail", tv2.tv_usec - tv1.tv_usec + (tv2.tv_sec - tv1.tv_sec) * 1000);
		printf("       Prod: %x --> %x, size = %d.\n",src + basic_1_src_offset[i],dst + basic_1_dst_offset[i],basic_1_size[i]);
		gettimeofday(&tv1, NULL);
		memcpy(dst + basic_1_dst_offset[i],
		       src + basic_1_src_offset[i],
		       basic_1_size[i]);
		gettimeofday(&tv2, NULL);
		printf("[Norm] Test (basic #1) %d / 5:     ,time: %u.\n\n",i+1, tv2.tv_usec - tv1.tv_usec + (tv2.tv_sec - tv1.tv_sec) * 1000);
	}
	// Basic2 benchmark (all aligned)
	for(i = 0;i < BENCHNUM;i++){
		pass = 0;
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
		printf("[Mine] Test (basic #2) %d / 5: %s ,time: %u.\n",i+1 , pass ? "pass" : "fail", tv2.tv_usec - tv1.tv_usec + (tv2.tv_sec - tv1.tv_sec) * 1000);
		printf("       Prod: %x --> %x, size = %d.\n",src + basic_2_src_offset[i],dst + basic_2_dst_offset[i],basic_2_size[i]);
		gettimeofday(&tv1, NULL);
		memcpy(dst + basic_2_dst_offset[i],
		       src + basic_2_src_offset[i],
		       basic_2_size[i]);
		gettimeofday(&tv2, NULL);
		printf("[Norm] Test (basic #1) %d / 5:     ,time: %u.\n\n",i+1, tv2.tv_usec - tv1.tv_usec + (tv2.tv_sec - tv1.tv_sec) * 1000);
	}
	// Medium1 benchmark (src unaligned)

	// Medium2 benchmark (dest unaligned)

	// Advanced benchmark (src & dest unaligned)
	return 0;
}
