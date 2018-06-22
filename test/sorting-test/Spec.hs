module Spec where

import Test.Tasty.Hspec
import Data.List.Split
import Text.Printf

import Sort

spec_test :: Spec
spec_test = runIO testCases >>= mapM_ check
  where
    check (input, expected)
      = it (printf "sorting of %s should be %s" (show input) expected)
        $ sorting input `shouldBe` expected

testCases :: IO [([Int], String)]
testCases = lines <$> readFile "test/sorting-test/tests.csv">>= mapM splitByComma
  where
    splitByComma str = case splitOn "," str of
      [_, input, expected, answer]
        -> if null answer then pure (intList, expected)
           else pure (intList, printf "%s\n%s" expected answer)
        where intList = map read $ words input
      _ -> fail "Invalid test case"
