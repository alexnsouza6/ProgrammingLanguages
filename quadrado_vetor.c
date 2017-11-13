#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
	int i, N, *vetor, soma = 0;


	printf("Qual o valor desejado para o vetor?:");
	printf("\n");
	scanf("%d", &N);

	vetor = (int*) malloc(N*sizeof(int));

	for(i=0;i<N;i++) *(vetor+i) = 1;

	for(i=0;i<N;i++) soma += pow(*(vetor+i),2);	

	free(vetor);

}