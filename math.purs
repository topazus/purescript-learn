module Math where

import Prelude

import Data.Number (pi, sqrt)

sum ∷ ∀ (a3 ∷ Type). Semiring a3 ⇒ a3 → a3 → a3
-- use inline syntax to define function
sum = \x y -> x + y

add ∷ ∀ (a12 ∷ Type). Semiring a12 ⇒ a12 → a12 → a12
add x y = x + y

diagonal_ a b = sqrt (a * a + b * b)

diagonal ∷ Number → Number → Number
diagonal a b = res
  where
  t = max a b
  res = t * (sqrt (a / t) * (a / t) + (b / t) * (b / t))

circleArea ∷ Number → Number
circleArea r = pi * r * r

