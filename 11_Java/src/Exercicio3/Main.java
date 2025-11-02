package Exercicio3;

public class Main {
    public static void main(String[] args) {
        Registros registroOculto = new Registros("Detetives S.O.");

        Poder poderFogo = new Poder("Fogo");
        Poder poderVoo = new Poder("Voo");

        Youkai kitsune = new Youkai("Kitsune", "Floresta de Kyoto", poderFogo);
        Alien zargon = new Alien("Zargon", "Área 51 - Nevada", "Marte", "Nave Triangular");

        System.out.println("--- Registrando invasores ---");
        registroOculto.registrarAvistamento(kitsune);
        registroOculto.registrarAvistamento(zargon);
        registroOculto.registrarAvistamento(kitsune);

        registroOculto.listarAvistamentos();
    }
}
