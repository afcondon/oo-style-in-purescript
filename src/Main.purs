module Main where

import Prelude
import Types

import A (fn) as MA
import B (fn) as MB
import Data.List (List(..),(:))
import Effect (Effect)
import Effect.Console (log, logShow)

mtn :: Int -> LT -> List (Tree Node) -> Tree Node
mtn i lt cs = N { val: i, lt: lt } cs

myTree :: Tree Node
myTree = mtn 1 A ( (mtn 2 B Nil) : (mtn 3 A ((mtn 5 B Nil):(mtn 6 A Nil):Nil)) : (mtn 4 B Nil) : Nil )

main :: Effect Unit
main = do
  let a = MA.fn myTree
  let b = MB.fn myTree
  log "🍝"
