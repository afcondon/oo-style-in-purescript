module Main where

import Types

import A (ctor) as MA
import B (ctor) as MB
import Data.List (List(..), (:))
import Effect (Effect)
import Effect.Console (log)
import Prelude (Unit, discard, ($))

ctor :: Int -> LT -> List (Tree Node) -> Tree Node
ctor i lt cs =
  case lt of
    A -> N { val: i, obj: MA.ctor } cs
    B -> N { val: i, obj: MB.ctor } cs

myTree :: Tree Node
myTree = ctor 1 A ( (ctor 2 B Nil) : (ctor 3 A ((ctor 5 B Nil):(ctor 6 A Nil):Nil)) : (ctor 4 B Nil) : Nil )

main :: Effect Unit
main = do
  log $ showTree $ runF1 myTree
  log $ showTree $ runF2 5 myTree
  log "🍝"
