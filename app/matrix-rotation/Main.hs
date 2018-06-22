module Main where

import Rotate
import Control.Monad

main :: IO ()
main = do
  m:n:r:_   <- map read . words <$> getLine
  rawMatrix <- forM [1 .. m] $ const getLine
  let matrix = map (map read . words) rawMatrix
  mapM_ (putStrLn . unwords . map show) $ rotate m n r matrix
