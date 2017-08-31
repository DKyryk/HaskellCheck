module CollatzSequences where

transform :: Int -> Int
transform value
          | odd value = value * 3 + 1
          | even value = value `div` 2

buildSequence :: Int -> [Int]
buildSequence 1 = [1]
buildSequence current = current : buildSequence (transform current)

calcLongSequences :: Int -> Int -> Int
calcLongSequences limit maxFirstValue =
       length (filter isLong (map buildSequence [1 .. maxFirstValue]))
       where isLong seq = length seq > limit
