import Text.Printf (printf)
main:: IO()
main = do
    input <- getLine
    target <- getLine
    print (solution target input)
    print ()

solution :: String -> String -> Bool
solution str suffix = go (reverse suffix) (reverse str)
  where
    go [] _ = True
    go _ [] = False
    go (x:xs) (y:ys)
      | x == y = go xs ys
      | otherwise = False