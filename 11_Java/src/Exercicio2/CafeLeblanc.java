package Exercicio2;

import java.util.ArrayList;

public class CafeLeblanc {
    private Menu menu;

    public CafeLeblanc(Menu menu) {
        this.menu = menu;
    }

    public void receberPedido(Cafe cafe) {
        System.out.println("✅ Pedido recebido de: " + cafe.getNome());
    }
}
