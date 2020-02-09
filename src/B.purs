module B (
  fn
) where

import Prelude
import Types

import Effect.Class.Console (log)
import Effect.Unsafe (unsafePerformEffect)

fn :: Tree Node -> Tree Node
fn (N nd cs) = N nd (fnP <$> cs)
  where
    _ = unsafePerformEffect $ log "fnB"