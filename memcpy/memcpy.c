#include <stddef.h>
void *
memcpy(void *dest, const void *src, size_t n){
	dest = (int *)src;
	return dest;
}
