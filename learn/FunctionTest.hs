module FunctionTest where

isEqual a b = a == b

isZero a = a == 0

--Conditional if. Else is required always
findMax a b = if a >= b
              then a
              else b

--Operations on lists
concatLists :: [a] -> [a] -> [a]
concatLists a b = a ++ b

--indexed get element of list
getNthElement :: [a] -> Int -> a
getNthElement list i = list !! i

getMiddleElement list = list !! (div (length list) 2)

invertList list = reverse list

sumList list = sum list

--substring/sublist from 0 index
substringFromStart list size = take size list

--substring/sublist from @size index
substringFromSize list size = drop size list

contains list element = element `elem` list

-- Intervals creation operations
createRange :: Enum t => t -> t -> [t]
createRange start end = [start..end]

-- Generates set of even numbers
generateEvenSet :: Int -> [Int]
generateEvenSet setSize = [x * 2 | x <- [1..setSize]]

generateSquareSet setSize resultLimit = [x * x | x <- [1..setSize], x * x <= resultLimit]

--- _ symbol indicates unused result
length' :: [a] -> Int
length' source = sum[1 | _ <- source]

-- Tuple is a language feature. List contain homogeneous data, Tuple contain heterogeneous data
combineToThreeTuple a b c = (a, b, c)

createPairs xValues yValues = zip xValues yValues