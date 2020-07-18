#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/time.h>
#define SIZE		1024 * 1024 * 12
#define BENCHNUM	15
volatile void *src;
volatile void *dst;

unsigned long size[BENCHNUM] = 
{1,2,4,8,64,9,63,25,1024*5 + 12,1024,1024*100 + 3,1024*1024,1024*1024*3 + 66,1024*1024*8 + 555,1024*1024*10};

int src_offset[BENCHNUM] = 
{0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x7,0x9,0x4,0x8,0xc,0x1,0x3,0x5};
int dst_offset[BENCHNUM] = 
{0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x0,0x4,0x8,0xc,0x1,0x3,0x5,0x7};

static inline unsigned long
rdtsc(){
	unsigned long tickl, tickh;
	asm volatile ("rdtsc" : "=a"(tickl), "=d"(tickh));
	return ((unsigned long)tickh << 32) | tickl;
}

void *
mymemcpy(void *dest, const void *src, size_t n);

void
InitSrcArea(int size){
	//src = (void *)malloc(SIZE * sizeof(char));
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
	unsigned long tick1,tick2;
	int pass = 0;
	src = (char *)malloc(SIZE * sizeof(char));
	dst = (char *)malloc(SIZE * sizeof(char));
	printf("========================================\n");
	for(int i = 0; i<= 14; i++){
		printf("Test %2d:\tsize = 0x%6lx\n\t0x%x -> 0x%x\n",i + 1,size[i],src + src_offset[i],dst + dst_offset[i]);
		InitSrcArea(SIZE);
		memset(dst,-1,SIZE);
		tick1 = rdtsc();
		tick1 = rdtsc();
		mymemcpy(dst + dst_offset[i],src + src_offset[i],size[i]);
		tick2 = rdtsc();
		pass = check(dst + dst_offset[i],src + src_offset[i],size[i]);
		if(!pass) {printf("Failed. \n");}
		else{
			printf("Passed. \n\nmymemcpy durtime:\t%d\n",tick2 - tick1);
			memset(dst,-2,SIZE);
			InitSrcArea(SIZE);
			tick1 = rdtsc();
			memcpy(dst + dst_offset[i],src + src_offset[i],size[i]);
			tick2 = rdtsc();
			printf("glib2.0 memcpy durtime:\t%d\n",tick2 - tick1);
			memset(dst,-1,SIZE);
			InitSrcArea(SIZE);
			tick1 = rdtsc();
			char_memcpy(dst + dst_offset[i],src + src_offset[i],size[i]);
			tick2 = rdtsc();
			printf("1-char copy durtime:\t%d\n",tick2 - tick1);
		}
		printf("========================================\n");
	}
	return 0;
}
