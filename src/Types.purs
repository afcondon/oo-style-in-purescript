module Types (LT(..), Node, Tree(..), Fn(..), doit) where

import Prelude

import Data.List (List(..), (:), fromFoldable)

data LT = A | B

newtype Fn = Fn (Tree Node -> Tree Node)

doit :: Tree Node -> Tree Node
doit node@(N { fn: Fn f } _) = f node

type Node = { val :: Int, lt :: LT, fn :: Fn }

data Tree a = N a (List (Tree a))

