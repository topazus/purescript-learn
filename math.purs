module Math where

import Prelude

import Data.Number (pi, sqrt)

sum ∷ ∀ (a3 ∷ Type). Semiring a3 ⇒ a3 → a3 → a3
-- use inline syntax to define function
sum = \x y -> x + y

add ∷ ∀ (a12 ∷ Type). Semiring a12 ⇒ a12 → a12 → a12
add x y = x + y

diagonal ∷ Number → Number → Number
diagonal a b = sqrt (a * a + b * b)

circleArea ∷ Number → Number
circleArea r = pi * r * r

