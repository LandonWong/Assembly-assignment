#include <stdio.h>
#include <sys/time.h>
long time;
long cycle_1,cycle_2;
void
main(){
	struct timeval tv1, tv2;
	long time;
	long long cycle_1,cycle_2;
	double cpufreq;
	gettimeofday(&tv1, NULL);
	asm volatile(
		"rdtscp\n\t"
		"shl	$32,%%rdx\n\t"
		"or	%%rax,%%rdx\n\t"
		"mov	%%rdx,%1\n\t"
		"mov	$0x7ffffffff,%%rcx\n\t"
		"L1:\n\t"
		"xor	%%ecx,%%eax\n\t"
		"inc	%%eax\n\t"
		"loop	L1\n\t"
		"rdtscp\n\t"
		"shl	$32,%%rdx\n\t"
		"or	%%rdx,%%rax\n\t"
		//"mov	%eax,cycle_2\n\t"
		: "=a" (cycle_2), "=r" (cycle_1)
	);
	gettimeofday(&tv2, NULL);
	time = (tv2.tv_sec - tv1.tv_sec) * 1000000 + (tv2.tv_usec - tv1.tv_usec);
	cpufreq = (cycle_2 - cycle_1) * 1.0 / (time * 1.0);
	printf("The cpu frequency is %.2f MHz, time = %d us, cycle = %d\n",cpufreq,time,cycle_2 - cycle_1);
	return;
}
