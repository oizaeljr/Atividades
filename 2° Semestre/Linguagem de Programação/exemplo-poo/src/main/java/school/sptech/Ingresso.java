package school.sptech;

public class Ingresso {
    private Integer sala;
    private Boolean meiaEntrada;

    public Ingresso(Integer sala, Boolean meiaEntrada) {
        this.sala = sala;
        this.meiaEntrada = meiaEntrada;
    }

    @Override
    public String toString() {
        return "Ingresso{" +
                "sala=" + sala +
                ", meiaEntrada=" + meiaEntrada +
                '}';
    }

    public Integer getSala() {
        return sala;
    }

    public Boolean getMeiaEntrada() {
        return meiaEntrada;
    }
}
