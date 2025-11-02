package Exercicio1;

import java.util.ArrayList;

public class Main {
    public static void main(String[] args) {
        Personagem personagem = new Personagem("João", 30);
        Mago mago =  new Mago("Howl", 60, "Transformação");

        ArrayList<Divisao> divisoes = new ArrayList<>();
        divisoes.add(new Divisao("Sala de jantar"));
        divisoes.add(new Divisao("Quartos"));
        Castelo castelo = new Castelo("Castelo Animado", divisoes);

        System.out.println(mago.lancarFeitico());
        System.out.println(personagem.getNome() + " habita o " + castelo.getNome());

        System.out.println("\nDivisões do Castelo:");
        for(Divisao d : castelo.getDivisoes()) {
            System.out.println("- " + d.getNome());
        }

        castelo.adicionarDivisao(new Divisao("Cozinha"));
        System.out.println("\nNovas divisões do Castelo:");
        for(Divisao d : castelo.getDivisoes()) {
            System.out.println("- " + d.getNome());
        }
    }
}