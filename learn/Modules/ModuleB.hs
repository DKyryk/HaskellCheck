module Modules.ModuleB
(x3, x5)
where

x3 :: Integer -> Integer
x3 = xn 3

x5 :: Integer -> Integer
x5 = xn 5

xn :: Num a => a -> a -> a
xn x n = x * n