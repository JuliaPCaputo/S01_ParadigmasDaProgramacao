use std::io;

fn eh_par(numero: i32) -> bool {
  if numero % 2 == 0 {
    return true;
  }
  else {
    return false;
  }
}

fn main() {
  let mut entrada = String::new();

  println!("Jogador 1, escolha par ou ímpar: ");
  io::stdin()
    .read_line(&mut entrada)
    .expect("Falha ao ler entrada.");
  let escolha1 = entrada
    .trim()
    .to_string();

  entrada.clear();
  println!("Jogador 1, escolha um número: ");
  io::stdin()
    .read_line(&mut entrada)
    .expect("Falha ao ler entrada.");
  let num_jogador1: i32 = entrada
    .trim()
    .parse()
    .expect("Digite um número válido.");

  entrada.clear();
  println!("Jogador 2, escolha par ou ímpar: ");
  io::stdin()
    .read_line(&mut entrada)
    .expect("Falha ao ler entrada.");
  let escolha2 = entrada
    .trim()
    .to_string();

  entrada.clear();
  println!("Jogador 2, escolha um número: ");
  io::stdin()
    .read_line(&mut entrada)
    .expect("Falha ao ler entrada.");
  let num_jogador2: i32 = entrada
    .trim()
    .parse()
    .expect("Digite um número válido.");

  let soma = num_jogador1 + num_jogador2;

  println!("A soma dos números é: {}", soma);

  if eh_par(soma) == true {
    println!("A soma é par!");
    if escolha1 == "par" {
      println!("Jogador 1 venceu!");
    }
    else {
      println!("Jogador 2 venceu!");
    }
  }
  else {
    println!("A soma é ímpar!");
    if escolha1 == "ímpar" {
      println!("Jogador 1 venceu!");
    }
    else {
      println!("Jogador 2 venceu!");
    }
  }
}