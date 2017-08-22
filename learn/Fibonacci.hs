module Fibonacci where

fibonacci :: Integer -> Integer

fibonacci 1 = 1
fibonacci 2 = 1
fibonacci index = if (index <= 0)
                    then error "Fibonacci could not be calculated for negative index"
                    else fibonacci (index - 1) + fibonacci (index - 2)