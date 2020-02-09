module Types (LT(..), Node, Tree(..), mn) where

import Data.List
import A (fn) as A
import B (fn) as B

data LT = LSM | AD

type Node = { val :: Int, lt :: LT }

mn :: Int -> LT -> Node
mn i lt = { val: i, lt }

data Tree a = N a (List a)


fnP :: Tree Node -> Tree Node
fnP node@(N { val, lt }) =
  case lt of
   LSM -> A.fn node
   AD  -> B.fn node


