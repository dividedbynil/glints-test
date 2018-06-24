module Sort where

import qualified Data.Vector as V
import Data.List
import Text.Printf

sorting :: [Int] -> String
sorting ls  = case findIndices (uncurry (>)) $ zip newLs ns of
  []  -> "yes"

  [x] -> verify swapped x (x+1)
    where
      swapped = map (newVec V.!) [x-1, x+1, x, x+2]

  [y, z] -> verify swapped' y z'
    where
      swapped' = map (newVec V.!) [y-1, z', y+1, z'-1, y, z'+1]
      z' = z + 1

  more@(i:is)
    | more == [i..last is], a < b && p < q -> yes "reverse" i lastIndex
    | otherwise -> "no"
    where
      lastIndex = last is + 1
      [a, b, p, q] = map (newVec V.!) [i-1, lastIndex, i, lastIndex + 1]

  where
    newLs@(_:ns) =  minBound : ls ++ [maxBound]
    newVec = V.fromList newLs
    yes = printf "yes\n%s %d %d"
    verify list i j = if list == sort list then yes "swap" i j else "no"
