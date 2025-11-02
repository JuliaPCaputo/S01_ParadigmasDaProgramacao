package Exercicio3;

public abstract class Entidades implements IRastreavel {
    public String nome;
    private String localizacao;

    public Entidades(String nome, String localizacao) {
        this.nome = nome;
        this.localizacao = localizacao;
    }

    @Override
    public abstract String obterCoordenadas();

    public String getLocalizacao() {
        return localizacao;
    }

    public String getNome() {
        return nome;
    }
}