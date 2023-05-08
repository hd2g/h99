-- |
-- >>> myLast [1..4]
-- 4
--
-- >>> myLast ['x','y','z']
-- 'z'
myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs
