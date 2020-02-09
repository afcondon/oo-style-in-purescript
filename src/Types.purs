module Types (LT(..), Node, Tree(..), Fn(..), LTobj, runF1, runF2) where

import Data.List (List)

data LT     = A | B

type LTobj  = { lt :: LT, f1 :: Fn, f2 :: Fn }
type Node   = { val :: Int, obj :: LTobj  }
data Tree a = N a (List (Tree a))

newtype Fn = Fn (Tree Node -> Tree Node)

runF1 :: Tree Node -> Tree Node
runF1 node@(N { obj: { f1: Fn f} } _) = f node

runF2 :: Tree Node -> Tree Node
runF2 node@(N { obj: { f2: Fn f} } _) = f node


