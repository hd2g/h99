import Data.List (group)
-- |
-- >>> compress "aaaabccaadeeee"
-- "abcade"
--
compress :: String -> String
compress s = map head $ group s
