-- |
-- >>> removeAt 2 "abcd"
-- ('b',"acd")
--
removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = (m, as ++ bs) where
  m = head $ drop (n - 1) xs
  as = take (n - 1) xs
  bs = drop n xs
