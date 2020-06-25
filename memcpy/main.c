#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <sys/time.h>
#define SIZE	100000
void *src;
void *dest;

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
	int align = 0;
	void *a;
	dest = (void *)malloc(SIZE * sizeof(char));
	InitSrcArea(SIZE);
	for(align = 0;align < 4;align++){
		a = mymemcpy(dest,src + 0x20 + align,0x1000);
		printf("1 Test src align %d, %s.\n",align,check(dest,src + 0x20 + align,0x1000) == 1 ? "pass" : "fail");
		//memcpy(dest,src + 0x10 + align,0x100);
		//printf("1 Test src align %d, %s.\n",align,check(dest,src + 10 + align,500) == 1 ? "pass" : "fail");
	}
	for(align = 0;align < 4;align++){
		mymemcpy(dest + 0x10 + align,src,0x1000);
		printf("2 Test dest align %d, %s.\n",align,check(dest + 0x10 + align,src,0x1000) == 1 ? "pass" : "fail");
		//memcpy(dest + 0x10 + align,src,0x100);
	}
	for(align = 0;align < 4;align++){
		mymemcpy(dest + 0x10 - align,src + 0x20 + align,0x1000);
		printf("3 Test src & dest align %d, %s.\n",align,check(dest + 0x10 - align,src + 0x20 + align,0x1000) == 1 ? "pass" : "fail");
		//memcpy(dest + 0x10 - align,src + 0x20 + align,0x100);
	}
	return 0;
}
