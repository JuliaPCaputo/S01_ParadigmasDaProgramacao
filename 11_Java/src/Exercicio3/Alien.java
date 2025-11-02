package Exercicio3;

public class Alien extends Entidades {
    private String planetaOrigem;
    private String ovni;

    public Alien(String nome, String localizacao, String planetaOrigem, String ovni) {
        super(nome, localizacao); // Passa nome e localização para a classe base
        this.planetaOrigem = planetaOrigem;
        this.ovni = ovni;
    }

    public String getPlanetaOrigem() {
        return planetaOrigem;
    }

    @Override
    public String obterCoordenadas() {
        return "Alien " + this.nome + " rastreado em " + super.getLocalizacao() + " | Origem: " + this.planetaOrigem;
    }
}
