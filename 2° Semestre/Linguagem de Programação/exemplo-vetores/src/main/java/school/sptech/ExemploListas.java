package school.sptech;

import java.util.ArrayList;
import java.util.List;

public class ExemploListas {
    public static void main(String[] args) {
        List<Integer> lista;
        lista = new ArrayList<>();

        lista.add(10);
        lista.add(20);
        lista.add(30);
        lista.add(1,70);
        lista.set(2,99);
        Integer valor = 70;
        lista.remove(valor);

        System.out.println(lista);

        List<String> frutas = new ArrayList<>(List.of("Fruta Pão", "Banana", "Pitaia"));
        frutas.add("Laranja");
        frutas.add("Pera");
        frutas.add("Goiaba");
        frutas.add("Goiaba");
        frutas.add("Maçã");
        frutas.addAll(List.of("Tomate", "Azeitona", "Morango"));

        System.out.println(frutas);
    }
}
