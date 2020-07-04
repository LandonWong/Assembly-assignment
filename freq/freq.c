#include <stdio.h>
#include <sys/time.h>
long time;
long cycle_1,cycle_2,cycle_1_h,cycle_2_h;
void
main(){
	struct timeval tv1, tv2;
	double cpufreq;
	gettimeofday(&tv1, NULL);
	asm volatile(
		"rdtscp\n\t"
		"mov	%eax,cycle_1\n\t"
		"mov	%edx,cycle_1_h\n\t"
		"mov	$0x7fffffff,%ecx\n\t"
		"L1:\n\t"
		"xor	%ecx,%eax\n\t"
		"inc	%eax\n\t"
		"loop	L1\n\t"
		"rdtscp\n\t"
		"mov	%eax,cycle_2\n\t"
		"mov	%edx,cycle_2_h\n\t"
	);
	gettimeofday(&tv2, NULL);
	time = (tv2.tv_sec - tv1.tv_sec) * 1000000 + (tv2.tv_usec - tv1.tv_usec);
	cpufreq = (((cycle_2_h - cycle_1_h) << 32) + cycle_2 - cycle_1) * 1.0 / (time * 1.0);
	printf("The cpu frequency is %.2f MHz, time = %d us, cycle = %x\n",cpufreq,time,((cycle_2_h - cycle_1_h) << 32) + cycle_2 - cycle_1);
	return;
}
