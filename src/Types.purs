module Types (LT(..), Node, Tree(..)) where

import Prelude

import Data.List (List(..), (:), fromFoldable)

-- import A (fn) as A
-- import B (fn) as B

data LT = A | B

type Node = { val :: Int, lt :: LT }

data Tree a = N a (List (Tree a))

-- fnP :: Tree Node -> Tree Node
-- fnP node@(N { val, lt }) =
--   case lt of
--    LSM -> A.fn node
--    AD  -> B.fn node


