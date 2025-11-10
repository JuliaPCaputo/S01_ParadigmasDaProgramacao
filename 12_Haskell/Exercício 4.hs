data Servico = Servico { nome :: String, tipo :: String, precoBase :: Double }
  deriving (Show)
    
data StatusAtendimento = EmAndamento | Finalizado | Cancelado
  deriving (Show, Eq)

data Atendimento = Atendimento { listaDeServicos :: [Servico], statusAtendimento :: StatusAtendimento }
  deriving (Show)

precoServico :: Servico -> Double
precoServico (Servico _ _ p) = p

calculaSubtotal :: [Servico] -> Double
calculaSubtotal listaDeServicos = sum (map precoServico listaDeServicos)

bonusEspiritual :: [Servico] -> Double
bonusEspiritual listaDeServicos
  | length listaDeServicos > 3 = subtotal * 0.25
  | subtotal > 500      = subtotal * 0.10
  | otherwise           = 0
  where
    subtotal = calculaSubtotal listaDeServicos
    
valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento atendimento
  | statusAtendimento atendimento == Cancelado = 0.0
  | otherwise = subtotal - bonusEspiritual (listaDeServicos atendimento)
  where
    subtotal = calculaSubtotal (listaDeServicos atendimento)
    
descricaoPrimeiroServico :: Atendimento -> String
descricaoPrimeiroServico atendimento =
  case listaDeServicos atendimento of
    []    -> "Nenhum serviço registrado."
    (x:_) -> nome x ++ " (" ++ tipo x ++ ")"

servicoA = Servico "ServicoA" "Banho" 99.99
servicoB = Servico "ServicoB" "Massagem" 167.49
servicoC = Servico "ServicoC" "Banquete" 320.15

atendimento1 = Atendimento [servicoA, servicoB, servicoC] EmAndamento
atendimento2 = Atendimento [servicoB, servicoA] Finalizado
atendimento3 = Atendimento [servicoC, servicoB] Cancelado

main :: IO ()
main = do

  putStrLn "Atendimento 1"
  putStrLn "Serviços prestados no atendimento:"
  print (listaDeServicos atendimento1)
  putStrLn "Primeiro serviço prestado: "
  print (descricaoPrimeiroServico atendimento1)
  putStr "Valor do atendimento: R$ "
  print (valorFinalAtendimento atendimento1)

  putStrLn "\nAtendimento 2"
  putStrLn "Serviços prestados no atendimento:"
  print (listaDeServicos atendimento2)
  putStrLn "Primeiro serviço prestado: "
  print (descricaoPrimeiroServico atendimento2)
  putStr "Valor do atendimento: R$ "
  print (valorFinalAtendimento atendimento2)
  
  putStrLn "\nAtendimento 3"
  putStrLn "Serviços prestados no atendimento:"
  print (listaDeServicos atendimento3)
  putStrLn "Primeiro serviço prestado: "
  print (descricaoPrimeiroServico atendimento3)
  putStr "Valor do atendimento: R$ "
  print (valorFinalAtendimento atendimento3)