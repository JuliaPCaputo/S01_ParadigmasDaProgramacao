use std::io;

fn verificar_senha(senha: &str) -> bool {
  senha.len() >= 8
  && senha.chars().any(|c| c.is_ascii_digit())
  && senha.chars().any(|c| c.is_ascii_uppercase())
}

fn main() {
  println!("Digite sua senha: ");

  loop {
    let mut senha = String::new();
    io::stdin()
      .read_line(&mut senha)
      .expect("Falha ao ler entrada");

    let senha = senha.trim();

    if verificar_senha(senha) == true {
      println!("Senha válida! Acesso concedido.");
      break;
    }
    else {
      println!("A senha fornecida não atende aos critérios estabelecidos. Insira nova senha.");  
    }
  }
}