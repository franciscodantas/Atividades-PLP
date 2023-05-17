main:: IO()
main = do
    input <- getLine
    print(light input)

light :: String -> String
light estado
    | estado == "green" = "yellow"
    | estado == "yellow" = "red"
    | otherwise = "green"