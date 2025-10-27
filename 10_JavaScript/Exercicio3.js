class Criatura {
  constructor(nome, perigosa) {
    this.nome = nome;
    this.perigosa = perigosa;
  }
}

class Diario {
  #autorSecreto;

  constructor(autor) {
    this.#autorSecreto = autor;
    this.enigmas = new Map();
    this.criaturasAvistadas = [];
  }

  getAutor() {
    return this.#autorSecreto;
  }

  adicionarEnigma(num, enigma) {
    this.enigmas.set(num, enigma);
  }

  decodificar(chave, num) {
    if (chave === this.#autorSecreto && this.enigmas.has(num)) {
      return `\nEnigma ${num}: ${this.enigmas.get(num)}\n`;
    } else {
      return "\nAcesso negado ou enigma inexistente!\n";
    }
  }
}

class Personagem {
  constructor(nome, idade) {
    this.nome = nome;
    this.idade = idade;
  }
}

class Protagonista extends Personagem {
  constructor(nome, idade) {
    super(nome, idade);
    this.diario = new Diario(nome);
  }
}

class CabanaMisterio {
  constructor(diario) {
    this.diario = diario;
    this.visitantes = [];
    this.funcionarios = [];
  }

  adicionarFuncionario(personagem) {
    this.funcionarios.push(personagem);
  }

  listarFuncionarios() {
    return this.funcionarios;
  }
}

const p1 = new Protagonista("Dipper", 12);
p1.diario.adicionarEnigma(1, "O monstro da floresta aparece à noite.");
p1.diario.adicionarEnigma(2, "Símbolos ocultos nas árvores.");

console.log(p1.diario.decodificar("Dipper", 1));
console.log(p1.diario.decodificar("Outro", 1));

const p2 = new Personagem("Mabel", 12);
const p3 = new Personagem("Tio Stan", 60);

const cabana = new CabanaMisterio(p1.diario);
cabana.adicionarFuncionario(p1);
cabana.adicionarFuncionario(p3);

console.log(cabana.listarFuncionarios());
