module B (
  ctor
) where

import Types

import Prelude (($), (<$>))
import Effect.Class.Console (log)
import Effect.Unsafe (unsafePerformEffect)

ctor :: LT -> LTobj
ctor lt  =  { lt: lt
            , f1: Fn f1
            , f2: Fn f2
            }

f1 :: Tree Node -> Tree Node
f1 (N nd cs) = N nd (runF1 <$> cs)
  where
    _ = unsafePerformEffect $ log "f1B" 

f2 :: Tree Node -> Tree Node
f2 (N nd cs) = N nd (runF2 <$> cs)
  where
    _ = unsafePerformEffect $ log "f2B" 
