import Control.Monad (guard, (>=>))
import Data.Functor (($>))
import Data.List (sort)
import Test.Tasty (TestTree, defaultMain, testGroup)
import Test.Tasty.HUnit (testCase, (@?=))
import Test.Tasty.QuickCheck (testProperty)

main :: IO ()
main = defaultMain $ testGroup "Tests" [unitTests, propTests]

unitTests :: TestTree
unitTests =
  testGroup
    "Unit tests"
    [ testCase "List comparison (GT)" $ compare ['a', 'b', 'c'] ['a', 'b'] @?= GT
    , testCase "List comparison (LT)" $ compare ['a', 'b'] ['a', 'b', 'c'] @?= LT
    , testCase "List comparison (EQ)" $ compare ['a', 'b'] ['a', 'b'] @?= EQ
    ]

propTests :: TestTree
propTests =
  testGroup
    "Property-based tests"
    [ testProperty "sort == sort . reverse" $ \xs -> sort (xs :: [Int]) == sort (reverse xs)
    , testProperty "Maybe bind assoc" $ \m -> ((m >>= f) >>= g) == (m >>= (f >=> g))
    ]
 where
  f :: Int -> Maybe Int
  f x = guard (even x) $> x

  g :: Int -> Maybe Int
  g = Just . (+ 1)
