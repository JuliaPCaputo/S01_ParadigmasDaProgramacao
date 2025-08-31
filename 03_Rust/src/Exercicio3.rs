use std::io;

fn imprimir_tabuada(numero: i32, limite_inferior: i32, limite_superior: i32) {
  for i in limite_inferior..=limite_superior {
    let resultado = numero * i;
    println!("{} * {} = {}", numero, i, resultado);
  }
}

fn main() {
  let mut entrada = String::new();

  println!("Informe o número da tabuada: ");
  io::stdin()
    .read_line(&mut entrada)
    .expect("Falha ao ler a entrada");
  let numero: i32 = entrada
    .trim()
    .parse()
    .expect("Por favor, informe um número válido");

  entrada.clear();
  println!("Informe o limite inferior: ");
  io::stdin()
    .read_line(&mut entrada)
    .expect("Falha ao ler a entrada");
  let limite_inferior: i32 = entrada
    .trim()
    .parse()
    .expect("Por favor, informe um número válido");

  entrada.clear();
  println!("Informe o limite superior: ");
  io::stdin()
    .read_line(&mut entrada)
    .expect("Falha ao ler a entrada");
  let limite_superior: i32 = entrada
    .trim()
    .parse()
    .expect("Por favor, informe um número válido");

  imprimir_tabuada(numero, limite_inferior, limite_superior);
}