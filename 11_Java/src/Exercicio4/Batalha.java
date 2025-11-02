package Exercicio4;

import java.util.HashMap;

public class Batalha {
    private HashMap<String, Boss> arena;

    public Batalha(HashMap arena) {
        this.arena = new HashMap<>();
    }

    public void adicionarBoss(Boss boss) {
        if (arena.containsKey(boss.getIdBoss())) {
            System.out.println("Boss " + boss.nome + " já está na arena.");
            return;
        }
        arena.put(boss.getIdBoss(), boss);
        System.out.println("Boss " + boss.nome + " adicionado à arena.");
    }

    public void iniciarBatalha(String idBoss) {
        Boss boss = arena.get(idBoss);
        if (boss == null) {
            System.out.println("Boss com ID " + idBoss + " não encontrado na arena.");
            return;
        }

        System.out.println("\nINICIANDO BATALHA: " + boss.nome);
        boss.iniciarFase();
        System.out.println("Ponto Fraco: " + boss.getPontoFraco());System.out.println("Batalha " + idBoss + " iniciada.");
    }
}
