module Main where

import Types

import Prelude (Unit)
import A (ctor) as MA
import B (ctor) as MB
import Data.List (List(..),(:))
import Effect (Effect)
import Effect.Console (log)

myTree :: Tree Node
myTree = MA.ctor 1 A ( (MB.ctor 2 B Nil) : (MA.ctor 3 A ((MB.ctor 5 B Nil):(MA.ctor 6 A Nil):Nil)) : (MB.ctor 4 B Nil) : Nil )

main :: Effect Unit
main = do
  let a = doit myTree
  log "🍝"
