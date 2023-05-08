module P10 where

import Prelude hiding (encode)

pack :: [Char] -> [String]
pack [] = []
pack (x : xs) = (x : ys) : pack zs where
  (ys, zs) = span (== x) xs

-- |
-- >>> encode "aaaabccaadeeee"
-- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
--
encode :: String -> [(Int, Char)]
encode = map (\s -> (length s, head s)) . pack
