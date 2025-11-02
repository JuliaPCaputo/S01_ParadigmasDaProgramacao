package Exercicio2;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        Cafe cafe = new Cafe("Expresso", 5.50);
        CafeGourmet cg = new CafeGourmet("Mocca", 13.75, 3.00);

        ArrayList<Cafe> listaInicial = new ArrayList<>();
        Menu menu = new Menu(listaInicial);
        menu.adicionarItem(cafe);
        menu.adicionarItem(cg);

        CafeLeblanc cafeteria = new CafeLeblanc(menu);

        System.out.println("\n--- Itens no Menu ---");
        for (Cafe c : menu.getItens()) {
            System.out.println(c.getNome() + " - R$" + c.calcularPrecoFinal());
        }

        cafeteria.receberPedido(cafe);
        cafeteria.receberPedido(cg);
    }
}