#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(){
	int i, j, N, N, **mat1, **mat2, **mat3;


	printf("Qual o valor desejado para a matriz?:");
	printf("\n");
	scanf("%d", &N);

	mat1 = (int**) malloc(N*sizeof(int*));
	mat2 = (int**) malloc(N*sizeof(int*));
	mat3 = (int**) malloc(N*sizeof(int*));
	for(i=0;i<N;i++) *(mat1+i) = (int*) malloc(N*sizeof(int));
	for(i=0;i<N;i++) *(mat2+i) = (int*) malloc(N*sizeof(int));
	for(i=0;i<N;i++) *(mat3+i) = (int*) malloc(N*sizeof(int));

	for(i=0;i<N;i++)
		for(j=0;j<N;j++) (*(mat3+i)+j) = (*(mat2+i)*j) * (*(mat3+i)+j);
	
	for(i=0;i<N;i++){
		free(*(mat1+i));
		free(*(mat2+i));
		free(*(mat3+i));
	} 

	free(mat1);
	free(mat2);
	free(mat3);

}