#include <stdio.h>
#include <stdlib.h>
#define MAXLEN		100
#define BENCH_SIZE	4
char *basic[BENCH_SIZE];
char *medium[BENCH_SIZE];
char *advanced[BENCH_SIZE];

int
myatoi(const char *nptr);

void
basic_test(){
	int i;
	int ref,mine,passnum;
	printf("<<<<< Begin BASIC Test >>>>>>\n");
	passnum = 0;
	for(i = 0;i < BENCH_SIZE;i++){
		ref = atoi(basic[i]);
		mine = myatoi(basic[i]);
		if(ref == mine){
			printf("[%d:%s] PASS : %d\n",i,basic[i],mine);
			passnum++;
		}else{
			printf("[%d:%s] FAIL : MINE: %d, REF: %d\n",i,basic[i],mine,ref);
		}
	}
	printf("pass %d / %d\n",passnum,BENCH_SIZE);
	printf("<<<<< BASIC Test Done >>>>>>\n\n");
}

void
medium_test(){
	int i;
	int ref,mine,passnum;
	printf("<<<<< Begin MEDIUM Test >>>>>>\n");
	passnum = 0;
	for(i = 0;i < BENCH_SIZE;i++){
		ref = atoi(medium[i]);
		mine = myatoi(medium[i]);
		if(ref == mine){
			printf("[%d:%s] PASS : %d\n",i,medium[i],mine);
			passnum++;
		}else{
			printf("[%d:%s] FAIL : MINE: %d, REF: %d\n",i,medium[i],mine,ref);
		}
	}
	printf("pass %d / %d\n",passnum,BENCH_SIZE);
	printf("<<<<< MEDIUM Test Done >>>>>>\n\n");
}

void
advanced_test(){
	int i;
	int ref,mine,passnum;
	printf("<<<<< Begin ADVANCED Test >>>>>>\n");
	passnum = 0;
	for(i = 0;i < BENCH_SIZE;i++){
		ref = atoi(advanced[i]);
		mine = myatoi(advanced[i]);
		if(ref == mine){
			printf("[%d:%s] PASS : %d\n",i,advanced[i],mine);
			passnum++;
		}else{
			printf("[%d:%s] FAIL : MINE: %d, REF: %ld \n",i,advanced[i],mine,(i == 3) ? 2147483647 : (i == 2) ? -2147483648 : ref);
		}
	}
	printf("pass %d / %d\n",passnum,BENCH_SIZE);
	printf("<<<<< ADVANCED Test Done >>>>>>\n\n");
}

void init(){
	int i;
	printf("Benchmark preparing...\n");
	for(i = 0;i < BENCH_SIZE;i++){
		basic[i] = (char *)malloc(MAXLEN * sizeof(char));
		medium[i] = (char *)malloc(MAXLEN * sizeof(char));
		advanced[i] = (char *)malloc(MAXLEN * sizeof(char));
	}
	// Init benchmark
	basic[0] = "352";
	basic[1] = "2147483640";
	basic[2] = "-155852";
	basic[3] = "+2351";
	medium[0] = "\t256";
	medium[1] = "         -658";
	medium[2] = "\n 23452";
	medium[3] = "-2561_ds";
	advanced[0] = "- 256adfs";
	advanced[1] = "   -a2sdfdfda";
	advanced[2] = "\n-99999999999";
	advanced[3] = "   +77777788888877";
	printf("Benchmark prepare done. Test begin\n");
}

int
main(){
	int i = 0;
	char c[10] = "1234";
	init();
	//basic_test();
	//medium_test();
	//advanced_test();
	printf("res=%u,%lu\n",myatoi(c),c);
	return 0;
}
