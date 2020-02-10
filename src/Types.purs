module Types (LT(..), Node, Tree(..), Fn1(..), Fn2(..), LTobj, runF1, runF2, showTree) where

import Prelude

import Data.List (List)

data LT     = A | B

type LTobj  = { lt :: LT, f1 :: Fn1, f2 :: Fn2 }
type Node   = { val :: Int, obj :: LTobj  }
data Tree a = N a (List (Tree a))

newtype Fn1 = Fn1 (Tree Node -> Tree Node)
newtype Fn2 = Fn2 (Int -> Tree Node -> Tree Node)

runF1 :: Tree Node -> Tree Node
runF1 node@(N { obj: { f1: Fn1 f} } _) = f node

runF2 :: Int -> Tree Node -> Tree Node
runF2 i node@(N { obj: { f2: Fn2 f} } _) = f i node

-- || show instances

showObj :: LTobj -> String
showObj { lt } = show lt

instance showLT :: Show LT where
  show A = "A"
  show B = "B"

showNode :: Node -> String
showNode { val, obj } = "Instance of type: " <> showObj obj <> " with value: " <> show val

showTree :: Tree Node -> String
showTree (N a cs) = "\n[" <> showNode a <> " " <> show children <> "]"
  where
    children :: List String
    children = showTree <$> cs


