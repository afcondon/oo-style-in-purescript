module A (
  ctor
) where

import Types

import Prelude (($), (<$>))
import Effect.Class.Console (log)
import Effect.Unsafe (unsafePerformEffect)

ctor :: LT -> LTobj
ctor lt  =  { lt: lt, fn: Fn fn }

fn :: Tree Node -> Tree Node
fn (N nd cs) = N nd (doit <$> cs)
  where
    _ = unsafePerformEffect $ log "fnA" 

