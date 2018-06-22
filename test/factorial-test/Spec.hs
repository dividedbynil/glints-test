module Spec where

import Test.Tasty.Hspec
import Data.List.Split
import Text.Printf

import Fac

spec_test :: Spec
spec_test = runIO testCases >>= mapM_ check
  where
    check (input, expected)
      = it (printf "factorial of %d should be %d" input expected)
        $ factorial input `shouldBe` expected

testCases :: IO [(Integer, Integer)]
testCases = lines <$> readFile "test/factorial-test/tests.csv">>= mapM splitByComma
  where
    splitByComma str = case splitOn "," str of
      [input, expected] -> pure (read input, read expected)
      _ -> fail "Invalid test case"
