package projetoLP;

public class ArrayOp extends Operacao {

	public void calculaQuadradoArray (float[] nums) {
		soma = 0;
		for(int i = 0; i<nums.length; i++) {
			soma += nums[i] * nums[i];
		}
		//System.out.println(soma);
	}
}
