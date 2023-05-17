main:: IO()
main = do
    input <- getLine
    print (getUnique (read input))

getUnique :: [Int] -> Int
getUnique ints = head (filter (\x -> length (filter (== x) ints) == 1) ints)