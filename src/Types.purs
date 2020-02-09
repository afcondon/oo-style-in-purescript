module Types (LT(..), Node, Tree(..), Fn(..), LTobj, doit) where

import Data.List (List)

data LT     = A | B

type LTobj  = { lt :: LT, fn :: Fn }
type Node   = { val :: Int, obj :: LTobj  }
data Tree a = N a (List (Tree a))

newtype Fn = Fn (Tree Node -> Tree Node)

doit :: Tree Node -> Tree Node
doit node@(N { obj: { fn: Fn f} } _) = f node



