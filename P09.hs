module P09 (pack) where

import Prelude hiding (pack)
-- |
-- >>> pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e']
-- ["aaaa","b","cc","aa","d","eeee"]
--
pack :: [Char] -> [String]
pack [] = []
pack (x : xs) = (x : ys) : pack zs where
  (ys, zs) = span (== x) xs
