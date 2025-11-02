package Exercicio1;

public class Mago extends Personagem {
    private String magia;

    public Mago(String nome, int idade, String magia) {
        super(nome, idade);
        this.magia = magia;
    }

    public String lancarFeitico() {
        return getNome() + " lançou um fetiço.";
    }
}
