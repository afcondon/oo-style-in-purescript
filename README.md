# oo-style-in-purescript

more of a gist than a repo, this is just a memo / example of one way to have OO-ish polymorphism in Purescript

Not at all sure that this would be considered good style or anything but it is at least one way of solving a problem that i had of wanting to be able to fold over a structure but get different functions dispatched depending on the "type" of the elements in the structure.

When i say type, i mean type as in an OO inheritance model...i think there's a bunch of ways of doing this, including probably using Variants library and other things (i wrote this while refactoring a layout algorithm for a type of tree to be extensible for different layouts for the sub-trees...something that seemed to fit very naturally to an OO-ish approach (or maybe it's just a terrible regression on my part to time before i knew The Way of FP, the Joy of Haskell, etc)
