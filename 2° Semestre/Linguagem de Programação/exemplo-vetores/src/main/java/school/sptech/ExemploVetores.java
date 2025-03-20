package school.sptech;

import java.lang.reflect.Array;
import java.util.Arrays;

public class ExemploVetores {
    public static void main(String[] args) {
        int[] vetor;
        Integer[] oVetor;

        vetor = new int[5];
        oVetor = new Integer[5];

        System.out.printf(Arrays.toString(vetor));
        System.out.printf(Arrays.toString(oVetor));

        Integer[] vetorInicializado = {10, 20, 30, 40, 50};

        vetorInicializado[4] = 80;
        System.out.printf(Arrays.toString(oVetor));
        System.out.println(Arrays.toString(vetorInicializado));

        System.out.println("Iterando o vetor");
        for (int i = 0; i < vetorInicializado.length; i++){
            System.out.println(vetorInicializado[i]);
        }

        System.out.println("Iterando for aprimorado");
        for (Integer valorAtual : vetorInicializado){
            System.out.println(valorAtual);
        }

    }
}
