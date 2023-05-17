main:: IO()
main = do
    input <- getLine
    print (getMiddle input)

getMiddle :: String -> String
getMiddle s
    | even (length s)  = s !! (meio - 1) : [s!! meio]
    | otherwise = [s!! meio]
    where meio = length s `div` 2