# Haskell types

1) **Int** - limited number (limits depend on processor bit capacity). In 32x CPU values are in [-2 147 483 648, 2 147 483 647]
2) **Integer** - unlimited number
3) **Float** - single-precision floating-point number
4) **Double** - double-precision floating-point number
5) **Bool** - boolean
6) **Char** - Unicode character
7) **()** - tuple (in practice, tuples can have at most 62 elements)

8) **Ordering** - result of comparison. Values are GT, LT, EQ
9) **[]** - list of any homogenous values (same type)
10) **[Char] or String** - type representing string or list of characters
