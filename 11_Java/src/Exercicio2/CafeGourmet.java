package Exercicio2;

public class CafeGourmet extends Cafe{
    public double bonusAroma;

    public CafeGourmet(String nome, double preco, double bonusAroma) {
        super(nome, preco);
        this.bonusAroma = bonusAroma;
    }

    @Override
    public double calcularPrecoFinal() {
        return super.calcularPrecoFinal() +  bonusAroma;
    }
}
