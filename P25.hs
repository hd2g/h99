module P25 where

import System.Random (randomRIO)
import P20 (removeAt)

rndPermu :: [a] -> IO [a]
rndPermu [] = return []
rndPermu xs = do
  i <- randomRIO (1, length xs)
  let (a, as) = removeAt i xs
  tl <- rndPermu as
  return $ a : tl
