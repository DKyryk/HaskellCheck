module ModuleA where
-- import ModuleB
--
-- x15 a = x3 x5 a

import Data.List

numUniques :: (Eq a) => [a] -> Int
numUniques = length . nub