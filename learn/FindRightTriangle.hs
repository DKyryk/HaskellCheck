module FindRightTriangle where

findRightTriangle limitLength perimeter = [(a,b,c) | c <- [1..limitLength], b <- [1..c], a <- [1..c], a^2 + b^2 == c^2, a + b + c == perimeter]
