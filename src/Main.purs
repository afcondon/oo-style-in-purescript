module Main where

import Prelude
import Types

import A (fn) as A
import B (fn) as B
import Data.List (List(..))
import Effect (Effect)
import Effect.Console (log, logShow)

myTree = N (mn 1 A) (Cons (N (mn 2 B) Nil))

main :: Effect Unit
main = do
  log "🍝"
