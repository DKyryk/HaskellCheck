module FunctionTest where

isEqual a b = a == b

isZero a = a == 0

findMax a b = if a >= b
              then a
              else b

concatLists a b = a ++ b

getNthElement list i = list !! i

getMiddleElement list = list !! (div (length list) 2)

invertList list = reverse list

sumList list = sum list

getFirstElements list size = take size list

dropFirstElements list size = drop size list

contains list element = element `elem` list