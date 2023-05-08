module P11 (encodeModified) where

import P10 (encode)

data RunLength
  = Multiple Int Char
  | Single Char
  deriving (Show)

-- |
-- >>> encodeModified "aaaabccaadeeee"
-- [Multiple 4 'a',Single 'b',Multiple 2 'c',Multiple 2 'a',Single 'd',Multiple 4 'e']
--
encodeModified :: String -> [RunLength]
encodeModified = map (\ (n, c) -> if n == 1 then Single c else Multiple n c) . encode
