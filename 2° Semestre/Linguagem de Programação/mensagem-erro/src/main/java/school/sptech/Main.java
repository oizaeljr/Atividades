package school.sptech;

import java.util.InputMismatchException;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        System.out.println("Hello, World!");
    }

    Scanner leitor = new Scanner(System.in);

    Integer numero = null;
    Integer numero2 = null;



    do{
        try {
            System.out.println("Digite um número inteiro");
            numero = leitor.nextInt();

            System.out.println("Digite outro número inteiro");
            numero2 = leitor.nextInt();

            System.out.println("A divisão dos números é: " + numero / numero2);

        } catch (InputMismatchException e) {
            System.out.println("Número inválido");
        }
    } while(numero == null){

    };
}