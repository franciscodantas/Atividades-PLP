import Text.Printf (printf)

apresenta:: Int -> [(Int,Int)] -> IO()
apresenta y [] = printf "nenhum numero foi sorteado"
apresenta 1 (x:xs) = printf "%d foi sorteado %d vez(es)\n" (fst x) (snd x)
apresenta y (x:xs) = do
    printf "%d foi sorteado %d vez(es)\n" (fst x) (snd x)
    apresenta (y-1) xs

repetido:: [Int] -> [(Int,Int)]
repetido [] = []
repetido (x:xs) = (x, repeticoes x (x:xs)): repetido (filter (/=x) xs)

repeticoes:: Int -> [Int] -> Int
repeticoes y array = length (filter (==y) array)

main:: IO()
main = do
    input <- getLine
    let tratamento = words $ map (\c -> if c == ',' || c == '[' || c == ']' then ' ' else c) input
    let array = map read tratamento :: [Int]
    let resultado = (repetido array)
    apresenta (length resultado) (resultado)