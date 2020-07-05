#include <stdio.h>
#include <sys/time.h>
void
main(){
	struct timeval tv1, tv2;
	long time,cycle_1_l,cycle_2_l,cycle_1_h,cycle_2_h;
	long long cycle_1,cycle_2;
	double cpufreq;
	while(1){
		gettimeofday(&tv1, NULL);
		asm volatile(
			"rdtscp\n\t"
			"mov	%%rdx,%3\n\t"
			"mov	%%rax,%2\n\t"
			"mov	$0x7fffffff,%%rcx\n"
			"L1:\n\t"
			"xor	%%ecx,%%eax\n\t"
			"inc	%%eax\n\t"
			"dec	%%rcx\n\t"
			"jnz	L1\n\t"
			"rdtscp\n\t"
			: "=a" (cycle_2_l), "=d" (cycle_2_h), "=r" (cycle_1_l), "=r" (cycle_1_h)
		);
		gettimeofday(&tv2, NULL);
		cycle_1 = (cycle_1_h << 32) | (cycle_1_l);
		cycle_2 = (cycle_2_h << 32) | (cycle_2_l);
		time = (tv2.tv_sec - tv1.tv_sec) * 1000000 + (tv2.tv_usec - tv1.tv_usec);
		cpufreq = (cycle_2 - cycle_1) * 1.0 / (time * 1.0);
		printf("The cpu frequency is %.2f MHz, time = %ld us, cycle = %llu\n",cpufreq,time,cycle_2 - cycle_1);
		printf("cycle 1 l %llu,cycle 2 l %llu\n",cycle_1,cycle_2);
	}
	return;
}
