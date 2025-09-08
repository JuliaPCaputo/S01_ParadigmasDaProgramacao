package main

import "fmt"

func verificarLogin(usuario, senha string) bool {
  if usuario == "senha" && senha == "admin" {
    return true
  } else {
    return false
  }
}

func main() {
  var usuario, senha string
  var resultado bool

  for {
    fmt.Print("Digite o usuário: ")
    fmt.Scanln(&usuario)
    fmt.Print("Digite a senha: ")
    fmt.Scanln(&senha)

    resultado = verificarLogin(usuario, senha)

    if resultado == true {
      fmt.Println("Login bem sucedido!")
      break
    } else {
      fmt.Println("Usuário ou senha incorretos. Tente novamente.")
    }
  }
}