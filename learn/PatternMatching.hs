module PatternMatching where

-- simple case for single variable
toString' :: (Show t, Eq t, Num t) => t -> String
toString' (-1) = "Negative One"
toString' 1 = "One"
toString' 2 = "Two"
toString' x = show x


addHyphenString :: String -> String
addHyphenString (x:xs) = x : '-': addHyphenString xs
addHyphenString [] = "LINE_END"


--You can access source data in pattern matching if add variable + @ symbol before pattern
firstSymbol :: String -> String
firstSymbol [] = ""
firstSymbol source@(x:xs) = source ++ " starts with " ++ [x]