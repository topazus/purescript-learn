module Main where

import Prelude

import Data.Foldable as Foldable
import Data.Int (decimal, toStringAs)
import Data.List (List, filter, (..))
import Data.List as List
import Effect (Effect)
import Effect.Console (log)
import Test.Assert (assert)

res ∷ List Int
-- (#) left associative
-- Applies an argument to a function: the reverse of ($).
-- products # filter isInStock # groupBy productCategory # length
-- is equivalent to:
-- length (groupBy productCategory (filter isInStock products))
res = 1 .. 10 # List.filter (\n -> n `mod` 2 == 0) # map (\n -> n * n)

ls = 1 .. 999 # List.filter (\n -> n `mod` 3 == 0 || n `mod` 5 == 0)
-- sum the list

res1 = ls # Foldable.foldl (+) 0
res1_ = Foldable.foldl (+) 0 ls
res2 = ls # Foldable.foldl (\x y -> x + y) 0

main :: Effect Unit

main = do
  assert (1.0 + 1.0 == 2.0)
  log (show res)
  log (show res1)
  log (show res2)
