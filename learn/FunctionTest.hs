module FunctionTest where

isEqual a b = a == b

isZero a = a == 0

findMax a b = if a >= b
              then a
              else b

concatLists a b = a ++ b

getNthElement a i = a !! i

getMiddleElement a = a !! (div (length a) 2)
