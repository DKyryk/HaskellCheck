module FunctionTest where

isEqual a b = a == b

isZero a = a == 0

--Conditional if. Else is required always
findMax a b = if a >= b
              then a
              else b

--Operations on lists
concatLists a b = a ++ b

--indexed get element of list
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
createRange start end = [start..end]