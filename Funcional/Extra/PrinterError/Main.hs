main:: IO()
main = do
    input <- getLine
    print (printerError input)

printerError :: [Char] -> [Char]
printerError s = show (errorCount s) ++ "/" ++ show (length s)

errorCount :: [Char] -> Int
errorCount [] = 0
errorCount (x:xs)
    | x `notElem` ['a','b'..'m'] = 1 + errorCount xs
    | otherwise = 0 + errorCount xs