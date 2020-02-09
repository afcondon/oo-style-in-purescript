module A (
  fn
) where

import Prelude
import Types

import Effect.Class.Console (log)
import Effect.Unsafe (unsafePerformEffect)

fn :: Tree Node -> Tree Node
fn (N nd cs) = N nd (fn <$> cs)
  where
    _ = unsafePerformEffect $ log "fnA"