import Data.List

speller :: [String] -> String
speller [] = ""
speller (x:[]) = createPhrase x 
speller (xs) = processList xs

createPhrase :: String -> String
createPhrase word = [head word] ++ " is for " ++ word ++ " "

processList :: [String] -> String
processList xs = concat (map createPhrase(init xs)) ++ ", and " ++ createPhrase(last xs)

main = do
    print (speller [])
    print (speller ["abacus"])
    print (processList ["apple", "banana", "coconut"])

