-- |
-- >>> dupli [1,2,3]
-- [1,1,2,2,3,3]
dupli :: [a] -> [a]
dupli = concatMap (\x -> [x, x])
