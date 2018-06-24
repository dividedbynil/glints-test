module Fac where

factorial :: Integer -> Integer
factorial n
  | n < 2 = 1
  | otherwise = n * factorial (n - 1)

-- factorial n = product [1..n]
