package Exercicio3;

public class Youkai extends Entidades {
    public String nome;
    private String localizacao;
    private Poder poder;

    public Youkai(String nome, String localizacao, Poder poder) {
        super(nome, localizacao);
        this.poder = poder;
    }

    @Override
    public String obterCoordenadas() {
        return "Youkai " + nome + " rastreado em " + super.getLocalizacao() + " (Poder: " + this.poder.nome + ")";
    }
}
