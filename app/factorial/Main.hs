module Main where

import Fac
import System.Environment

main :: IO ()
main = getArgs >>= process

process :: [String] -> IO ()
process (n:_) = print $ factorial $ read n
process _ = fail "No argument! Kindly specify."
