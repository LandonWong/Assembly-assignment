#include <stdio.h>
#include <sys/time.h>
long time;
long cycle_1,cycle_2;
void
main(){
	struct timeval tv1, tv2;
	double cpufreq;
	gettimeofday(&tv1, NULL);
	asm volatile(
		"lfence\n\t"
		"rdtscp\n\t"
		"mov	%eax,cycle_1\n\t"
		"mov	$0xffffff,%ecx\n\t"
		"L1:\n\t"
		"xor	%ecx,%eax\n\t"
		"inc	%eax\n\t"
		"loop	L1\n\t"
		"rdtscp\n\t"
		"mov	%eax,cycle_2\n\t"
	);
	gettimeofday(&tv2, NULL);
	time = (tv2.tv_sec - tv1.tv_sec) * 1000000 + (tv2.tv_usec - tv1.tv_usec);
	cpufreq = (cycle_2 - cycle_1) / time;
	printf("The cpu frequency is %.2f MHz, time = %d\n",cpufreq,time);
	return;
}
