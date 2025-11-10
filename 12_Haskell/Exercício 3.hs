data Banda = Banda { nome :: String, genero :: String, cache :: Double }
  deriving (Show)
    
data StatusEvento = Ativo | Encerrado | Cancelado
  deriving (Show, Eq)

data Evento = Evento { listaDeBandas :: [Banda], statusEvento :: StatusEvento }
  deriving (Show)

cacheBanda :: Banda -> Double
cacheBanda (Banda _ _ p) = p

calculaSubtotal :: [Banda] -> Double
calculaSubtotal listaDeBandas = sum (map cacheBanda listaDeBandas)
    
custoTotalEvento :: Evento -> Double
custoTotalEvento evento
  | statusEvento evento == Cancelado = 0.0
  | otherwise = subtotal * 1.2
  where
    subtotal = calculaSubtotal (listaDeBandas evento)
    
bandaAbertura :: Evento -> String
bandaAbertura evento =
    case listaDeBandas evento of
        []    -> "Nenhuma banda no evento."
        (x:_) -> nome x  
        
bandaEncerramento :: Evento -> String
bandaEncerramento evento =
    case listaDeBandas evento of
        []    -> "Nenhuma banda no evento."
        x -> nome (last x)

bandaA = Banda "BandaA" "Rock" 150000.0
bandaB = Banda "BandaB" "Pop" 340000.0
bandaC = Banda "BandaC" "MPB" 250000.0

evento1 = Evento [bandaA, bandaB, bandaC] Ativo
evento2 = Evento [bandaB, bandaC, bandaA] Encerrado
evento3 = Evento [bandaC, bandaB, bandaA] Cancelado

main :: IO ()
main = do

  putStrLn "Evento 1"
  putStrLn "Bandas no evento:"
  print (listaDeBandas evento1)
  putStrLn "Show de abertura: "
  print (bandaAbertura evento1)
  putStrLn "Show de encerramento: "
  print (bandaEncerramento evento1)
  putStr "Valor do evento: R$ "
  print (custoTotalEvento evento1)

  putStrLn "\nEvento 2"
  putStrLn "Bandas no evento:"
  print (listaDeBandas evento2)
  putStrLn "Show de abertura: "
  print (bandaAbertura evento2)
  putStrLn "Show de encerramento: "
  print (bandaEncerramento evento2)
  putStr "Valor do evento: R$ "
  print (custoTotalEvento evento2)

  putStrLn "\nEvento 3"
  putStrLn "Bandas no evento:"
  print (listaDeBandas evento3)
  putStrLn "Show de abertura: "
  print (bandaAbertura evento3)
  putStrLn "Show de encerramento: "
  print (bandaEncerramento evento3)
  putStr "Valor do evento: R$ "
  print (custoTotalEvento evento3)