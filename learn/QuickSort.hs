module QuickSort where

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort [x] = [x]
quickSort (x:xs) =
    let smallerSorted = quickSort [a | a <- xs, a <= x]
        biggerSorted = quickSort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted

