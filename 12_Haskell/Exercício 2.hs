data Item = Item { nome :: String, categoria :: String, preco :: Double }
    deriving (Show)

data CompraZelda = CompraZelda { itensPedidos :: [Item] }
    deriving (Show)

precoItem :: Item -> Double
precoItem (Item _ _ p) = p

calculaSubtotal :: [Item] -> Double
calculaSubtotal listaDeItens = sum (map precoItem listaDeItens)

calculaDesconto :: [Item] -> Double
calculaDesconto itens =
    let subtotal = calculaSubtotal itens
    in if subtotal > 200
        then subtotal * 0.10
        else 0
    
valorFinal :: CompraZelda -> Double
valorFinal (CompraZelda itens)
  | subtotal > 200 = subtotal - (subtotal * 0.10)
  | otherwise      = subtotal + 15
  where
    subtotal = calculaSubtotal itens

itemA = Item "ItemA" "Arma" 150.0
itemB = Item "ItemB" "Poção" 35.0
itemC = Item "ItemC" "Equipamento" 168.0

pedido1 = CompraZelda [itemA, itemA]
pedido2 = CompraZelda [itemC, itemB]
pedido3 = CompraZelda [itemA, itemC]

main :: IO ()
main = do

    putStrLn "Pedido 1"
    putStrLn "Itens da compra:"
    print (itensPedidos pedido1)
    putStr "Preço final: R$ "
    print (valorFinal pedido1)

    putStrLn "\nPedido 2"
    putStrLn "Itens da compra:"
    print (itensPedidos pedido2)
    putStr "Preço final: R$ "
    print (valorFinal pedido2)

    putStrLn "\nPedido 3"
    putStrLn "Itens da compra:"
    print (itensPedidos pedido3)
    putStr "Preço final: R$ "
    print (valorFinal pedido3)