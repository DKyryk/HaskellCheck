module FunctionUsage where

--Operations on lists
concatLists :: [a] -> [a] -> [a]
concatLists a b = a ++ b

--Put before head of list (operation :)
beforeHead :: a -> [a] -> [a]
beforeHead a list = a : list

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

createPairs xValues yValues = zip xValues yValues

-- takeWhile iterates over list starting from head while predicate is true
getFirstWord ::  String -> String
getFirstWord chars = takeWhile (/=' ') chars

