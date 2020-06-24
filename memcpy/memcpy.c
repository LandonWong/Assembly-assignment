#include <stdlib.h>
#include <string.h>
void *
mymemcpy(void *dest, const void *src, size_t n){
	//dest = memcpy(dest,src,n);
	src++;
	n++;
	return dest;
}
