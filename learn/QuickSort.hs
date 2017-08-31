module QuickSort where

quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort [x] = [x]
quickSort (x:xs) =
    let smallerSorted = quickSort [a | a <- xs, a <= x]
        biggerSorted = quickSort [a | a <- xs, a > x]
    in  smallerSorted ++ [x] ++ biggerSorted


quickSortWithFilter :: (Ord a) => [a] -> [a]
quickSortWithFilter [] = []
quickSortWithFilter [x] = [x]
quickSortWithFilter (x:xs) =
    let smallerSorted = quickSort (filter (<= x) xs)
        biggerSorted = quickSort (filter (> x) xs)
    in  smallerSorted ++ [x] ++ biggerSorted