#include <stdio.h>
#include <sys/time.h>
void
main(){
	long cycle_1_h,cycle_1_l,cycle_2_h,cycle_2_l;
	long time;
	long cycle_1,cycle_2;
	struct timeval tv1, tv2;
	double cpufreq;
	gettimeofday(&tv1, NULL);
	asm(
		"push	%eax\n\t"
		"push	%ecx\n\t"
		"rdtsc\n\t"
		"mov	%eax,cycle_1_l\n\t"
		"mov	$0x7fffffff,%ecx\n\t"
		"L1:\n\t"
		"inc	%eax\n\t"
		"loop L1\n\t"
		"rdtsc\n\t"
		"mov	%eax,cycle_2_l\n\t"
		"pop	%ecx\n\t"
		"pop	%eax\n\t"
	);
	gettimeofday(&tv2, NULL);
	cycle_1 = cycle_1_l;
	cycle_2 = cycle_2_l;
	time = (tv2.tv_sec - tv1.tv_sec) * 1000000 + (tv2.tv_usec - tv1.tv_usec);
	cpufreq = (cycle_2 - cycle_1) / time;
	printf("The cpu frequency is %.2f MHz\n", cpufreq);
	return;
}
