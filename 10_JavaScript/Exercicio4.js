class Hunter {
  #nome;
  #idade;
  #localizacao;

  constructor(nome, local, idade) {
    this.#nome = nome;
    this.#localizacao = local;
    this.#idade = idade;
  }

  getNome() {
    return this.#nome;
  }

  getLocalizacao() {
    return this.#localizacao;
  }

  setLocalizacao(local) {
    this.#localizacao = local;
  }

  setIdade(idade) {
    this.#idade = idade;
  }
}

class Especialista extends Hunter {
  #habilidadeNen;

  constructor(nome, habilidade) {
    super(nome);
    this.#habilidadeNen = habilidade;
  }

  rastrearLocal(lat, long) {
    return `Especialista ${this.getNome()} rastreou (${lat}, ${long}) usando ${this.#habilidadeNen}.`;
  }
}

class Manipulador extends Hunter {
  #alvoAtual;

  constructor(nome) {
    super(nome);
    this.#alvoAtual = null;
  }

  definirAlvo(hunter) {
    this.#alvoAtual = hunter;
  }

  rastrearLocal(lat, long) {
    const alvoNome = this.#alvoAtual ? this.#alvoAtual.getNome() : "nenhum alvo";
    return `Manipulador ${this.getNome()} está rastreando ${alvoNome} em (${lat}, ${long}).`;
  }
}

class Batalhao {
  #hunters;

  constructor() {
    this.#hunters = new Set();
  }

  adicionarHunter(hunter) {
    for (let h of this.#hunters) {
      if (h.getNome() === hunter.getNome()) {
        console.log(`Hunter "${hunter.getNome()}" já está no Batalhão!`);
        return;
      }
    }
    this.#hunters.add(hunter);
  }

  getNumHunters() {
    return this.#hunters.size;
  }

  iniciarRastreamento(lat, long) {
    const resultados = [];
    for (let h of this.#hunters) {
      resultados.push(h.rastrearLocal(lat, long));
    }
    return resultados;
  }
}

const e1 = new Especialista("Especialista 1", "Habilidade 1");
e1.setLocalizacao("Cidade A");
e1.setIdade(19);

const e2 = new Especialista("Especialista 2", "Habilidade 2");
e2.setLocalizacao("Cidade B");
e2.setIdade(21);

const m1 = new Manipulador("Manipulador 1");
m1.setLocalizacao("Cidade C");
m1.setIdade(25);
m1.definirAlvo(e1);

const b = new Batalhao();
b.adicionarHunter(e1);
b.adicionarHunter(e2);
b.adicionarHunter(m1);
b.adicionarHunter(e1); // duplicado

console.log(`Total de Hunters: ${b.getNumHunters()}`);
console.log(b.iniciarRastreamento("-15.8", "47.9").join("\n"));
