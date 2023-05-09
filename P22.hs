import Prelude hiding (range)

-- |
-- >>> range 4 9
-- [4,5,6,7,8,9]
--
range n m
  | n <= m = n : range (n + 1) m
  | otherwise = []
