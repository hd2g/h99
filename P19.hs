-- |
-- >>> rotate ['a','b','c','d','e','f','g','h'] 3
-- "defghabc"
-- 
-- >>> rotate ['a','b','c','d','e','f','g','h'] (-2)
-- "ghabcdef"
--
rotate :: [a] -> Int -> [a]
rotate xs n = zs ++ ys where
  (ys, zs) = splitAt n' xs
  n' = if 0 < n then n else length xs + n
