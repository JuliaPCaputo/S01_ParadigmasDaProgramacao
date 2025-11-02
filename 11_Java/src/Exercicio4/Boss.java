package Exercicio4;

import java.util.LinkedHashSet;

public class Boss {
    public String nome;
    private String idBoss;
    private String PontoFraco;
    private LinkedHashSet<PadraoAtaque> moveset;

    public Boss(String nome, String idBoss, String PontoFraco) {
        this.nome = nome;
        this.idBoss = idBoss;
        this.PontoFraco = PontoFraco;
        this.moveset = new LinkedHashSet<>();
    }

    public String getIdBoss() {
        return idBoss;
    }

    public String getPontoFraco() {
        return PontoFraco;
    }

    public void adicionarAtaque(PadraoAtaque ataque) {
        moveset.add(ataque);
    }

    public void iniciarFase() {
        System.out.println("Iniciando Fase " + this.nome);
    }
}
