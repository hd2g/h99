module P10 (encode) where

import Prelude hiding (encode)
import P09 (pack)

-- |
-- >>> encode "aaaabccaadeeee"
-- [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]
--
encode :: String -> [(Int, Char)]
encode = map (\s -> (length s, head s)) . pack
