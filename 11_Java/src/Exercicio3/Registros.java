package Exercicio3;

import java.util.HashMap;

public class Registros {
    public String nomeEquipe;
    private HashMap<String, Entidades> avistamentos;

    public Registros(String nomeEquipe) {
        this.nomeEquipe = nomeEquipe;
        this.avistamentos = new HashMap<>();
    }

    public boolean registrarAvistamento(Entidades entidade) {
        if (avistamentos.containsKey(entidade.nome)) {
            System.out.println("Entidade " + entidade.nome + " já foi registrada.");
            return false;
        }

        avistamentos.put(entidade.nome, entidade);
        System.out.println("Entidade " + entidade.nome + " registrada com sucesso.");
        return true;
    }

    public void listarAvistamentos() {
        System.out.println("\n--- Relatório de Avistamentos da Equipe: " + nomeEquipe + " ---");
        if (avistamentos.isEmpty()) {
            System.out.println("Nenhuma entidade rastreada ainda.");
            return;
        }

        for (Entidades entidade : avistamentos.values()) {
            System.out.println(entidade.obterCoordenadas());
        }
    }
}
