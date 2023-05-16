module P32 where

-- |
-- >>> [myGCD 36 63, myGCD (-3) (-6), myGCD (-3) 6]
-- [9,3,3]
myGCD :: Integral a => a -> a -> a
myGCD n m
  | m == 0 = abs n
  | otherwise = myGCD m (n `mod` m)

