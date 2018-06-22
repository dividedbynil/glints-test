module Fac where

factorial :: Integer -> Integer
factorial n
  | n < 1  = 0
  | n == 1 = 1
  | otherwise = n * factorial (n - 1)
