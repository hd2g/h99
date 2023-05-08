-- |
-- >>> myButLast [1..4]
-- 3
--
-- >>> myButLast ['a'..'z']
-- 'y'
myButLast :: [a] -> a
myButLast (x:_:[]) = x
myButLast (_:xs) = myButLast xs
