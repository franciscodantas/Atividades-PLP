precoInterface :: Int -> IO()
precoInterface quant = preco quant 0

preco :: Int -> Int -> IO()
preco 0 valor = print valor
preco quant valor = do
    compra <- getLine
    preco (quant-1) (valor + getItem compra)

getItem :: String -> Int
getItem compra
    | compra == "cafe" = 4
    | compra == "pao" = 2
    | compra == "suco" = 5
    | compra == "pao de queijo" = 5
    | compra == "sanduiche" = 3
    | otherwise = 0

main:: IO()
main = do
    quant <- getLine
    precoInterface(read quant :: Int)