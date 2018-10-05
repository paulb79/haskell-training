
speller :: [[char]] -> [char]
speller input = map (\x -> x.head ++ " is for " ++ x) input 

main = do 
	print (speller [""])
	print (speller ["Hello"])
	print (speller [["Pie", "Peter"]])


