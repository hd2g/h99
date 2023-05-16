module P34 where

import P33 (coprime)

-- |
-- >>> totient 10
-- 4
totient :: Integral a => a -> Int
totient m = length [n | n <- [1 .. m - 1], coprime n m]
