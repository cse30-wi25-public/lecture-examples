#include <stdio.h>

extern void addarr(int *A, int *B);
int main(){
	int A[100];
	int B[100];

	for (int i=0; i<100; ++i){
		A[i] = i;
		B[i] = 0;
	}
	addarr(A, B);
	for (int i=0; i<100; ++i){
		printf("A[%d] = %d, B[%d] = %d\n", i, A[i], i, B[i]);
	}

}
