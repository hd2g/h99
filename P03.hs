-- |
-- >>> elementAt [1,2,3] 2
-- 2
--
-- >>> elementAt "haskell" 5
-- 'e'
--
elementAt :: [a] -> Int -> a
elementAt (x:_) 1 = x
elementAt (_:xs) n = elementAt xs (n - 1)
