module A (
  ctor
) where

import Types

import Prelude (($), (<$>))
import Data.List (List)
import Effect.Class.Console (log)
import Effect.Unsafe (unsafePerformEffect)

ctor :: Int -> LT -> List (Tree Node) -> Tree Node
ctor i lt cs  = N { val: i, lt: lt, fn: Fn fn } cs


fn :: Tree Node -> Tree Node
fn (N nd cs) = N nd (doit <$> cs)
  where
    _ = unsafePerformEffect $ log "fnA" 

