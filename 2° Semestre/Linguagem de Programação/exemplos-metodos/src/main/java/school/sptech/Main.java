package school.sptech;

public class Main {
    public static void main(String[] args) {
        Auxiliar bacon = new Auxiliar();

        Double media = bacon.calcularMedia(7.0,8.0,8.0,8.0);
        bacon.exibirMensagem(String.format("%.2f", media));
    }
}