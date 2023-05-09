-- |
-- >>> slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
-- "cdefg"
slice :: [a] -> Int -> Int -> [a]
slice  xs n m = take (m - n + 1) $ drop (n - 1) xs
