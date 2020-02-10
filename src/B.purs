module B (
  ctor
) where

import Types

import Prelude (($), (<$>), (<>), show, (-))
import Effect.Class.Console (log)
import Effect.Unsafe (unsafePerformEffect)

ctor :: LTobj
ctor =  { lt: B
        , f1: Fn1 f1
        , f2: Fn2 f2
        }

f1 :: Tree Node -> Tree Node
f1 (N nd cs) = N nd (runF1 <$> cs)
  where
    _ = unsafePerformEffect $ log ("f2B: " <> show nd.val) 

f2 :: Int -> Tree Node -> Tree Node
f2 i (N nd cs) = N nd { val = nd.val - i } ((runF2 i) <$> cs)
  where
    _ = unsafePerformEffect $ log ("f2B: " <> show nd.val) 
