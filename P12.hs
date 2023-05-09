module P12 where

import P11

-- |
-- >>> decodeModified [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
-- "aaaabccaadeeee"
decodeModified :: [RunLength] -> String
decodeModified = foldl f [] where
  f acc (Single c) = acc ++ [c]
  f acc (Multiple n c) = acc ++ replicate n c
