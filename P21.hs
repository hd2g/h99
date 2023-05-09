-- |
-- >>> insertAt 'X' "abcd" 2
-- "aXbcd"
--
insertAt :: a -> [a] -> Int -> [a]
insertAt a as 1 = a : as
insertAt a (b : bs) n = b : insertAt a bs (n - 1)

