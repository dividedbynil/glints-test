module Spec where

import Test.Tasty.Hspec
import Data.List.Split
import Text.Printf

import Rotate

spec_test :: Spec
spec_test = runIO testCases >>= mapM_ check
  where
    check (m, n, r, matrix, expected)
      = it (printf "matrix of %d x %d rotate %d should be %s" m n r expected)
        $ show (rotate m n r matrix)  `shouldBe` expected

testCases :: IO [(Int, Int, Int, [[Int]], String)]
testCases = lines <$> readFile "test/matrix-rotation-test/tests.csv">>= mapM splitAndRead
  where
    splitAndRead str = case splitOn " " str of
      full@(_:_:_:rest)
        -> pure (m, n, r, map (map read . splitOn ",") $ take m rest, last rest)
        where
          m:n:r:_ = map read $ take 3 full
      _ -> fail "Invalid test case"
