package projetoLP;

public class Main {

	public static void main(String[] args) {

		int n_array = 1000000;
		int n_matriz = 2000;
		float[] vet = new float[n_array];
		float[][] mat1 = new float[n_matriz][n_matriz];
		float[][] mat2 = new float[n_matriz][n_matriz];
		
		ArrayOp opArray = new ArrayOp();
		MatrizOp opMatriz = new MatrizOp();
		
		//inicializa o array
		for(int i = 0; i < n_array; i++) {
			vet[i] = i;
		}
		
		long t1 = System.currentTimeMillis();
		
		opArray.calculaQuadradoArray(vet);
		
		long t2 = System.currentTimeMillis() - t1;
		System.out.println("Tempo de execucao do array foi: " + t2 + "ms");
		
		//inicializa matriz
		for(int i=0; i<n_matriz; i++) {
			for(int j=0; j<n_matriz; j++) {
				mat1[i][j] = j+1;
				mat2[i][j] = j+1;
			}
		}
		
		t1 = System.currentTimeMillis();
		
		opMatriz.multiplicaMatriz(mat1, mat2);
		
		t2 = System.currentTimeMillis() - t1;
		System.out.println("Tempo de execucao da matriz foi: " + t2 + "ms");
	}

}
