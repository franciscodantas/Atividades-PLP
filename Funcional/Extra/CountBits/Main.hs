main:: IO()
main = do
    input <- getLine
    print (countBits (read input))

countBits :: Int -> Int
countBits 0 = 0
countBits 1 = 1
countBits number = if even number then countBits (number `div` 2) else 1 + countBits (number `div` 2)