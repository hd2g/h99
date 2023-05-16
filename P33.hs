module P33 where

import P32 (myGCD)

-- |
-- >>> coprime 35 64
-- True
coprime :: Integral a => a -> a -> Bool
coprime n m = myGCD n m == 1
