module P30 where

-- |
-- >>> isPrime 7
-- True
isPrime :: Integral a => a -> Bool
isPrime 2 = True
isPrime 3 = True
isPrime n
  | even n = False
  | otherwise = not $ any (\i -> n `mod` i == 0) [3, 5 .. floor $ sqrt $ fromIntegral n]
