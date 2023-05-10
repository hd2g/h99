import System.Random (randomRIO)

rndSelect :: [a] -> Int -> IO [a]
rndSelect [] _ = return []
rndSelect _ 0 = return []
rndSelect xs n = do
  i <- randomRIO (0, length xs - 1)
  tl <- rndSelect xs (n - 1)
  return $ xs !! i : tl
