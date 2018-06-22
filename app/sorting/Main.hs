module Main where

import Sort
import Control.Monad

main :: IO ()
main = do
  [_, ls] <- forM [1,2] $ const getLine
  putStrLn . sorting . map read $ words ls
