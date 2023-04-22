stopWords:: [String] -> [String]
stopWords = filter (\w -> length w > 3)

main:: IO()
main = do
    input <- getLine
    print (unwords(stopWords (words input)))