main:: IO()
main = do
    input <- getLine
    print (spinWords input)

invertWords :: String -> String
invertWords str
    | length str < 5 = str
    | otherwise = reverse str

spinWords :: String -> String
spinWords frase = unwords (map invertWords (words frase))


