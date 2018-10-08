-- lengthpb hs

lengthpb :: [a] -> Int 
lengthpb [] = 0
lengthpb (x:xs) = 1 + lengthpb xs

main = do
	print (lengthpb([1, 2, 3]))

