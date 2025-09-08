package main

import "fmt"

func fibonacci(n int) {
  var a = 0
  var b = 1
  var next int

  for i := 0; i < n; i++ {
    fmt.Print(a, " ")
    next = a + b
    a = b
    b = next
  }
}

func main() {
  var n int

  fmt.Print("Informe a quantidade de termos da sequencia de Fibonacci: ")
  fmt.Scanln(&n)

  fibonacci(n)
}