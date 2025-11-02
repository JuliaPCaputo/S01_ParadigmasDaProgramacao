package Exercicio2;

public class Cafe {
    public String nome;
    public double precoBase;

    public Cafe(String nome, double precoBase) {
        this.nome = nome;
        this.precoBase = precoBase;
    }

    public String getNome() {
        return nome;
    }

    public double getPrecoBase() {
        return precoBase;
    }

    public double calcularPrecoFinal() {
        return this.precoBase;
    }
}
