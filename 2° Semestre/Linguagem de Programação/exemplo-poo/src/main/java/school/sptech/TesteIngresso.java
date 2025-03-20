package school.sptech;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class TesteIngresso {
    public static void main(String[] args) {
        Ingresso i1 = new Ingresso(2, false);
        Ingresso i2 = new Ingresso(3, true);
        Ingresso i3 = new Ingresso(1, true);

        Ingresso[] ingressos = new Ingresso[3];
        ingressos[0] = i1;
        ingressos[1] = i2;
        ingressos[2] = i3;

        System.out.println(Arrays.toString(ingressos));

        List<Ingresso> oIngressos = new ArrayList<>();
        oIngressos.add(i1);
        oIngressos.add(i2);
        oIngressos.add(i3);

        System.out.println(oIngressos);
    }
}
