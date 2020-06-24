#include <stdio.h>
#include <sys/time.h>
void
main(){
	struct timeval tv1, tv2;
	long cpufreq;
	gettimeofday(&tv1, NULL);
	asm(
	);
	gettimeofday(&tv2, NULL);
	cpufreq = 200;
	printf("The cpu frequency is %d MHz\n", cpufreq);
	return;
}
