import Data.List

speller :: [String] -> String
speller [] = ""
speller (x:[]) = getPhrase x 
speller (xs) = processList xs

getPhrase :: String -> String
getPhrase word = [head word] ++ " is for " ++ word

processList :: [String] -> String
processList xs = intercalate ", " (map getPhrase $ init xs) ++ ", and " ++ getPhrase (last xs)

main = do
    print (speller ["abacus"])
    print (speller [])
    print (processList ["apple", "banana", "coconut"])
