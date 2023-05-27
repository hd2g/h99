module P35 where

import Data.List (find)

import P31 (isPrime)

primes limit = filter isPrime [2..limit]

-- |
-- >>> primeFactors 315
-- [3,3,5,7]
primeFactors :: Integer -> [Integer]
primeFactors n
  | n == 0 = []
  | isPrime n = [n]
  | otherwise = case find (\i -> n `mod` (fromIntegral i) == 0) (primes $ floor $ sqrt $ fromIntegral n) of
      Just x -> x : primeFactors (n `div` x)
      Nothing -> []
