package school.sptech;

import java.util.Scanner;

public class ExemploScanner {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);

        System.out.println("Digite o nome do aluno:");
        String nome = leitor.nextLine();

        Double nota1;
        Double nota2;
        Double nota3;
        Double nota4;

        do {
            System.out.println("Digite a primeira nota:");
            nota1 = leitor.nextDouble();
        } while (nota1 < 0 || nota1 > 10);

        do {
            System.out.println("Digite a primeira nota:");
            nota2 = leitor.nextDouble();
        } while (nota2 < 0 || nota2 > 10);

        do {
            System.out.println("Digite a primeira nota:");
            nota3 = leitor.nextDouble();
        } while (nota3 < 0 || nota3 > 10);

        do {
            System.out.println("Digite a primeira nota:");
            nota4 = leitor.nextDouble();
        } while (nota4 < 0 || nota4 > 10);


        Double media = (nota1 + nota2 + nota3 + nota4) / 4;

        System.out.println("Nome: " + nome);
        System.out.println(String.format("%.2f", media));
    }
}