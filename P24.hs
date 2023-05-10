module P24 where

import P23 (rndSelect)

diffSelect :: Int -> Int -> IO [Int]
diffSelect n m = rndSelect [1 .. m] n
