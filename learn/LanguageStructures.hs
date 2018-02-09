module LanguageStructures where

isEqual a b = a == b

isZero a = a == 0

--Conditional if. Else is required always
findMax :: Ord a => a -> a -> a
findMax a b = if a >= b
              then a
              else b

-- Intervals creation operations
createRange :: Enum t => t -> t -> [t]
createRange start end = [start..end]

-- Generates set of even numbers
generateEvenSet :: Int -> [Int]
generateEvenSet setSize = [x * 2 | x <- [1..setSize]]

isDigitsOnlyString :: [Char] -> Bool
isDigitsOnlyString source = length source == length [x | x <- source, elem x ['1'..'9']]

-- list comprehension is a standard haskell construct
-- It contains [operation on element, how to get elements, filter predicate(s)]
-- multiple predicates are separated by comma
-- x <- [1..20] means get numbers from 1 to 20
generateSquareSet setSize resultLimit = [x * x | x <- [1..setSize], x * x <= resultLimit]

--- _ symbol indicates unused result
length' :: [a] -> Int
length' source = sum[1 | _ <- source]

-- Tuple is a language feature. List contain homogeneous data, Tuple contain heterogeneous data
combineToThreeTuple a b c = (a, b, c)

-- where allows to define calculation result as variable and use it in guards (Pipe symbol)
testWhere :: Int -> Int -> String
testWhere a b
    | processed < 50 = "Less than 50"
    | processed <= 100 = "Less than 100"
    | otherwise = "More than 100"
    where processed = a * 10 + b


-- multiple where block. all variable names must be indented as one column. Otherwise it would be an error
bmiTell :: Double -> Double -> String
bmiTell weight height
        | bmi <= skinny = "You're underweight, you emo, you!"
        | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
        | bmi <= fat    = "You're fat! Lose some weight, fatty!"
        | otherwise     = "You're a whale, congratulations!"
        where bmi = weight / height ^ 2
              skinny = 18.5
              normal = 25.0
              fat = 30.0

-- pattern matching could be used in where block
initials :: String -> String -> String
initials firstName lastName = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstName
          (l:_) = lastName

-- let defines variables that could be used in "in" block further. The form is let <bindings> in <expression>
-- The difference from where is that let bindings are expressions themselves. where bindings are just syntactic constructs
cylinder :: Double -> Double -> Double
cylinder r h =
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in  sideArea + 2 * topArea

-- another king of pattern matching (that could be used not only in function parameters) - is operator case
-- case expression of pattern -> result
--                    pattern -> result
--                    pattern -> result

describeList :: [a] -> String
describeList xs = "The list is " ++ case xs of [] -> "empty."
                                               [x] -> "a singleton list."
                                               xs -> "a longer list."

--calling functions with too few parameters, we're creating new functions on the fly.
multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

multTwoWithNine = multThree 9

multWithEighteen = multTwoWithNine 2

compareWithHundred :: (Num a, Ord a) => a -> Ordering
compareWithHundred = compare 100

--section allows to define parameter of infix function as a new function
divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

-- function as a parameter
applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

pow4 :: (Num a) => a -> a
pow4 a = applyTwice (^2) a
