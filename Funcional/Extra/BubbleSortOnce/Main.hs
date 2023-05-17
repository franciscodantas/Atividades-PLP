import Text.Printf (printf)
main :: IO()
main = do
    input <- getLine
    let tratamento = words $ map (\c -> if c == ',' || c == '[' || c == ']' then ' ' else c) input
    let array = map read tratamento :: [Int]
    print (organizaVelhos array)

organizaVelhos :: [Int] -> [Int]
organizaVelhos [] = []
organizaVelhos (x:xs) = 

bubblesortOnce :: [Int] -> [Int]
bubblesortOnce [x] = [x]
bubblesortOnce [] = []
bubblesortOnce (x:xs)
    | x < head xs = head xs : bubblesortOnce (x: tail xs)
    | otherwise = x : bubblesortOnce xs

