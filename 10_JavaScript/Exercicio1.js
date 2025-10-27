class Pokemon {
  #vida; // private

  constructor(nome, tipo, vidaInicial) {
    this.nome = nome;
    this.tipo = tipo;
    this.#vida = vidaInicial;

  }

  getVida() {
    return this.#vida;
  }

  setVida(vida) {
    this.#vida = vida;
  }

  receberDano(dano) {
    this.#vida -= dano;
    console.log(`${this.nome} recebeu ${dano} de dano. Vida atual: ${this.#vida}`);
  }

  atacar(alvo) {
    console.log(`${this.nome} atacou ${alvo.nome}`);
  }
}

class PokemonFogo extends Pokemon {
  constructor(nome, vidaInicial, bonus) {
    super(nome, "Fogo", vidaInicial);
    this.bonus = bonus;
  }

  atacar(alvo) {
    const dano = 10 + this.bonus;
    super.atacar(alvo);
    alvo.receberDano(dano);
    console.log(`${this.nome} usou Lança-Chamas em ${alvo.nome}`);
  }
}

class PokemonAgua extends Pokemon {
  #curaBase; // private

  constructor(nome, vidaInicial, curaBase) {
    super(nome, "Água", vidaInicial);
    this.#curaBase = curaBase;
  }

  atacar(alvo) {
    const dano = 10;
    super.atacar(alvo);
    alvo.receberDano(dano);
    console.log(`${this.nome} usou Jato de Água em ${alvo.nome}`);
  }

  curar() {
    const novaVida = this.getVida() + this.#curaBase;
    this.setVida(novaVida);
    console.log(`${this.nome} se curou em ${this.#curaBase}. Vida atual: ${novaVida}`);
  }
}

const Charmander = new PokemonFogo("Charmander", 100, 20);
const Squirtle = new PokemonAgua("Squirtle", 80, 15);

Charmander.atacar(Squirtle);
Squirtle.atacar(Charmander);
Squirtle.curar();