package Exercicio4;

import java.util.HashMap;

public class Main {
    public static void main(String[] args) {
        PadraoAtaque bolaDeFogo = new PadraoAtaque("Bola de Fogo", 50);
        PadraoAtaque teleporte = new PadraoAtaque("Teleporte Súbito", 10);
        PadraoAtaque investida = new PadraoAtaque("Investida Brutal", 80);

        Boss boss1 = new Boss("Golem de Rocha", "B-001", "Gelo");
        boss1.adicionarAtaque(investida);
        boss1.adicionarAtaque(investida);
        boss1.adicionarAtaque(teleporte);

        BossMagico bm1 = new BossMagico("Lich Ancestral", "B-002", "Luz Sagrada");
        bm1.adicionarAtaque(bolaDeFogo);
        bm1.adicionarAtaque(teleporte);

        HashMap<String, Boss> mapaDaArena = new HashMap<>();
        Batalha arena = new Batalha(mapaDaArena);

        arena.adicionarBoss(boss1);
        arena.adicionarBoss(bm1);

        arena.iniciarBatalha("B-001");
        arena.iniciarBatalha("B-002");
        arena.iniciarBatalha("B-003");
    }
}
