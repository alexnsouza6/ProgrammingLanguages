package projetoLP;

public class MatrizOp extends Operacao{

	public void multiplicaMatriz(float[][] mat1, float[][] mat2) {
		 
		for(int linha=0; linha<mat1.length; linha++) {
		    for(int coluna=0; coluna<mat2.length; coluna++){ 
		      soma=0; 
		      for(int i=0; i<mat1[0].length; i++) {
		        soma += mat1[linha][i] * mat2[i][coluna];
		      }
		    // System.out.print(soma + " ");
		    }
		    //System.out.println(); //new line
		}
		
	}

}
