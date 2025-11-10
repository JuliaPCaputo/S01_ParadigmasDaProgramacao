data Bebida = Bebida { nome :: String, tipo :: String, preco :: Double }
    deriving (Show)

data StatusPedido = Aberto | Entregue | Cancelado
    deriving (Show, Eq)

data Pedido = Pedido { itensPedidos :: [Bebida], statusPedido :: StatusPedido }
    deriving (Show)

precoBebida :: Bebida -> Double
precoBebida (Bebida _ _ p) = p

calculaSubtotal :: [Bebida] -> Double
calculaSubtotal listaDeBebidas = sum (map precoBebida listaDeBebidas)

valorTotalPedido :: Pedido -> Double
valorTotalPedido pedido
    | statusPedido pedido == Cancelado = 0.0
    | otherwise = total
    where
        sub = calculaSubtotal (itensPedidos pedido)
        total = sub + 5

primeiraBebida :: Pedido -> String
primeiraBebida pedido =
    case itensPedidos pedido of
        []    -> "Nenhuma bebida no pedido."
        (x:_) -> nome x 

bebidaA = Bebida "Cappuccino" "Café" 15.0
bebidaB = Bebida "Suco de Laranja" "Suco" 12.0
bebidaC = Bebida "Chá Matte" "Chá" 8.0

pedido1 = Pedido [bebidaA, bebidaA] Aberto
pedido2 = Pedido [bebidaC, bebidaB] Entregue
pedido3 = Pedido [bebidaA, bebidaC] Cancelado

main :: IO ()
main = do

    putStr "Pedido 1 (Aberto) - Valor Total: R$ "
    print (valorTotalPedido pedido1)

    putStr "Pedido 2 (Entregue) - Valor Total: R$ "
    print (valorTotalPedido pedido2)

    putStr "Pedido 3 (Cancelado) - Valor Total: R$ "
    print (valorTotalPedido pedido3)

    putStrLn "\nPrimeira bebida no Pedido 3: "
    putStrLn (primeiraBebida pedido3)