package school.sptech;

public class BillheteUnico {
    String nomeUsuario;
    Integer anoEmissao;
    String cor;
    Double saldo;
    Boolean estudante;
    Boolean idoso;

    BillheteUnico(String nomeUsuario, Integer anoEmissao, String cor, Double saldo, Boolean estudante, Boolean idoso){
        this.nomeUsuario = nomeUsuario;
        this.anoEmissao = anoEmissao;
        this.cor = cor;
        this.saldo = saldo;
        this.estudante = estudante;
        this.idoso = idoso;
    }

    BillheteUnico(String nomeUsuario, Integer anoEmissao){
        this.nomeUsuario = nomeUsuario;
        this.anoEmissao = anoEmissao;
    }



    Boolean efetuarRecarga(Double valor) {
        if (valor < 2 || valor > 100) {
            System.out.println("Recarga não efetuada!");
            return false;
        } else {
            saldo += valor;
            System.out.println("Recarga efetuada com sucesso!");
            return true;
        }
    }

    void pagarPassagem(Boolean integracao) {
        if (integracao || idoso) {
            System.out.println("Valor da passagem R$0,00");
            return;
        }

        Double valorPassagem = estudante ? 2.60 : 5.20;

        if (estudante) {
            if (saldo >= valorPassagem) {
                saldo -= valorPassagem;
                System.out.printf("Estudante - Valor da passagem R$ %.2f\n", valorPassagem);
            } else System.out.println("Saldo insuficiente!");
            return;
        }

        if (saldo >= valorPassagem) {
            saldo -= valorPassagem;
            System.out.printf("Estudante - Valor da passagem R$ $.2f\n", valorPassagem);
        } else System.out.println("Saldo insuficiente!");
    }

    void exibirInformacoes(){
        System.out.printf("""
                Nome Usuário: $s
                Ano: %d
                Cor: %s
                Saldo: R$ %.2f
                Estudante: %b
                Idoso: %b
                """, nomeUsuario, anoEmissao, cor, saldo, estudante, idoso);
    }
}
