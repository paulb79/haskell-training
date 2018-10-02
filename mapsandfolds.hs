lst = [1..10]

-- map
f x = x*(x+1)
lst_ = map f lst

-- foldl
g = (/)
accl = foldl g 1 lst 

-- foldr
g' = (/)
accr = foldr g' 1 lst 


main = do
    print lst_
    print accl
    print accr
    print comp
    print comp'
    print fld


-- map :: (a -> b) -> [a] -> [b]
-- foldl :: (b -> a -> b) -> b -> [a] -> b 
-- foldr :: (a -> b -> b) -> b -> [a] -> b

-- function composition 
-- f . g

comp' = map (+5) (map (*3) [1..10])
-- which can be writen as composing f and g
comp = map ((+5) . (*3)) [1..10]

fld = foldl (\acc elt -> elt:acc) "" "Reverse my string"
