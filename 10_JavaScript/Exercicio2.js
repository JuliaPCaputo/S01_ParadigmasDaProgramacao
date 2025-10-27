class IExplorador {
  explorarTerritorio() {
    throw new Error("Método explorarTerritorio() deve ser implementado.");
  }
}

class ODM_Gear {
  #gasRestante;

  constructor(modelo) {
    this.modelo = modelo;
    this.#gasRestante = 100; // quantidade inicial
  }

  usarGas(quantidade) {
    if (quantidade > this.#gasRestante) quantidade = this.#gasRestante;
    this.#gasRestante -= quantidade;
    return quantidade;
  }

  getGas() {
    return this.#gasRestante;
  }
}

class Soldado extends IExplorador {
  #gear;

  constructor(nome, modeloGear) {
    super();
    this.nome = nome;
    this.#gear = modeloGear;
  }

  explorarTerritorio() {
    const gasUsado = this.#gear.usarGas(10);
    return `${this.nome} explorou território usando ${gasUsado} de gás.`;
  }

  verificarEquipamento() {
    return `Gás restante de ${this.nome}: ${this.#gear.getGas()}`;
  }
}

class Esquadrao extends IExplorador {
  constructor(lider, membrosIniciais = []) {
    super();
    this.lider = lider;
    this.membros = membrosIniciais;
  }

  adicionarMembro(soldado) {
    this.membros.push(soldado);
  }

  explorarTerritorio() {
    return this.membros.map(s => s.explorarTerritorio());
  }

  relatarStatus() {
    return this.membros.map(s => s.verificarEquipamento());
  }
}

const gear1 = new ODM_Gear("Modelo A");
const gear2 = new ODM_Gear("Modelo B");
const gear3 = new ODM_Gear("Modelo C");

const soldado1 = new Soldado("Levi", gear1);
const soldado2 = new Soldado("Carlo", gear2);
const soldado3 = new Soldado("Daniel", gear3);

const esquadrao = new Esquadrao(soldado1, [soldado2, soldado3]);
esquadrao.adicionarMembro(new Soldado("João", new ODM_Gear("Modelo D")));

console.log(esquadrao.explorarTerritorio());
console.log(esquadrao.relatarStatus());

console.log(esquadrao.explorarTerritorio());
console.log(esquadrao.relatarStatus());
