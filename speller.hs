speller :: [[Char]] -> [Char]
speller [] = ""
speller [x:xs] = [x]



main = do
    print (speller ["abacus"])
    print (speller [])
    print (speller ["apple", "banana", "coconut"])
