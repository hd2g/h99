-- |
-- >>> repli "abc" 3
-- "aaabbbccc"
repli :: [a] -> Int -> [a]
repli xs n = concatMap (\x -> [x | _ <- [1..n]]) xs
