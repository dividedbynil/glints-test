module Rotate where

import Data.List
import Data.List.Split
import Data.Array

rotate :: Int -> Int -> Int -> [[Int]] -> [[Int]]
rotate m n r matrix = chunksOf n newList
  where
    newList = map (matrixArray !) sortedIndices
    matrixArray = listArray (1, m*n) $ concat matrix
    sortedIndices = elems . array (1, m*n) $ concat switchAll
    switchAll = map (switch r) flattenedIndices
    flattenedIndices = map concat $ chunksOf 4 (flatten matrixIndices)
    matrixIndices = chunksOf n [1 .. m*n]

switch :: Int -> [a] -> [(a, a)]
switch i ls = zip ls . drop i $ cycle ls

flatten :: [[a]] -> [[a]]
flatten [] = []
flatten (m:ms) = m : flatten (reverse $ transpose ms)
