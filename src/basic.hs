
-- functions

doSomething :: String -> IO ()
doSomething name =
    putStrLn name

-- multiply 2 integers
calc :: Int -> Int -> Int
calc a b = a * b


-- lambda expression
addsums = \x y z -> x + y + z


-- conditions
maxPB x y =
    if x > y
        then x
        else y


minmax = \x y -> [min x y, max x y]

-- case statement
data Color = Red | Green | Yellow

set_color = Red

color = set_color
action = case color of
    Red -> maxPB 1 2
    Green -> maxPB 4 2
    Yellow -> maxPB 0 0 


myList = [1,2,3,4,5]

-- filter a list based on a predicate
filterpb :: (a->Bool) -> [a] -> [a]
filterpb pred []   = []
filterpb pred (x:xs)
    | pred x      = x : filterpb pred xs
    | otherwise   = filterpb pred xs 



-- function composition f . g 
grow :: (Num a) => a -> b  
grow a = a*2

shrink :: (Fractional b) => b -> b
shrink b = b/2

x = grow . shrink 5

-- main
main = do
    putStrLn "Hello World"
    -- call another function
    doSomething "Paul"

    print(calc 5 5)

    print(4 + addsums 3 2 1)
    print(minmax 3 8)
    print(minmax 8 3)

    print(myList ++ [1,2,3])

    print (head myList)
    print (tail myList)

    print (filterpb (<2) myList)

    print(grow 5 :: Int) 
    print(shrink 10 :: Int)
    -- f . g 
    print (grow . shrink 5::Int)

    -- map 
    print (map (\x -> x*2) myList)

    -- foldl






