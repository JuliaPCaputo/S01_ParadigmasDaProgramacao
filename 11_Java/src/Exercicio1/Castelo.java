package Exercicio1;

import java.util.ArrayList;

public class Castelo {
    public String nome;
    private ArrayList<Divisao> divisoes;

    public Castelo(String nome, ArrayList<Divisao> divisoes) {
        this.nome = nome;
        this.divisoes = divisoes;
    }

    public void adicionarDivisao(Divisao divisao) {
        this.divisoes.add(divisao);
    }

    public ArrayList<Divisao> getDivisoes() {
        return divisoes;
    }

    public String getNome() {
        return nome;
    }
}
