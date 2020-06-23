#include <stdio.h>
#include <stdlib.h>
#define SIZE	1000
void *src;
void *dest;

void *
memcpy(void *dest, const void *src, size_t n);

int
main(){
	src = (void *)malloc(SIZE * sizeof(char));
	dest = (void *)malloc(SIZE * sizeof(char));
	dest = memcpy(dest,src,500);
	return 0;
}
