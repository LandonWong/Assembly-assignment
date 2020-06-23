#include <stddef.h>
void *
memcpy(void *dest, const void *src, size_t n){
	(int*)dest = (int*)src;
	return dest;
}
