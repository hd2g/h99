-- |
-- >>> dropEvery "abcdefghik" 3
-- "abdeghk"
dropEvery :: [a] -> Int -> [a]
dropEvery xs n = map fst $ filter (\(x, i) -> i `mod` n /= 0) $ zip xs [1..]
