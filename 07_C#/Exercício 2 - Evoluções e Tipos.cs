using System;
using System.Collections.Generic;

public class Pokemon
{
  private string nome;

  public Pokemon(string nome)
  {
    this.nome = nome;
  }

  public virtual void atacar()
  {
    Console.WriteLine($"{nome} está atacando!");
  }

  public string getNome()
  {
    return nome;
	}
}

public class PokemonDeFogo : Pokemon
{
  public PokemonDeFogo(string nome) : base(nome)
  {
  }

  public override void atacar()
  {
    Console.WriteLine($"{getNome()} lança fogo!");
  }
}

public class PokemonDeAgua : Pokemon
{
  public PokemonDeAgua(string nome) : base(nome)
  {
  }

  public override void atacar()
  {
    Console.WriteLine($"{getNome()} lança um jato de água!");
  }
}

public class Program
{
  public static void Main(string[] args)
  {
    List<Pokemon> pokemons = new List<Pokemon>();
    pokemons.Add(new PokemonDeFogo("Charmander"));
    pokemons.Add(new PokemonDeAgua("Blastoise"));

    foreach (Pokemon pokemon in pokemons)
    {
      pokemon.atacar();
    }
  }
}