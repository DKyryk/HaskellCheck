module Fibonacci where

fibonacci :: Integer -> Integer

fibonacci index
        | index < 0 = error "Fibonacci could not be calculated for negative index"
        | index == 0 = 1
        | index == 1 = 1
        | otherwise = fibonacci (index - 1) + fibonacci (index - 2)