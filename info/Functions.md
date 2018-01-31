# Functions

## 1) Higher order functions

Haskell functions can take functions as parameters and return functions as return values.
A function that does either of those is called a higher order function.
Every function in Haskell officially only takes one parameter.
All the functions that accepted several parameters so far have been curried functions.
If you call function with several parameters internally it transform to sub function with one parameter that returns another function.
By calling functions with too few parameters, so to speak, we're creating new functions on the fly.

## 2) Sections

Infix functions can also be partially applied by using sections.
To section an infix function, simply surround it with parentheses and only supply a parameter on one side.
That creates a function that takes one parameter and then applies it to the side that's missing an operand.

## 3) Function application

```haskell
($) :: (a -> b) -> a -> b
f $ x = f x
```

Whereas normal function application (putting a space between two things) has a really high precedence,
the $ function has the lowest precedence.
Function application with a space is left-associative (so f a b c is the same as ((f a) b) c)),
function application with $ is right-associative.

Most of the time, it's a convenience function so that we don't have to write so many parentheses.
Consider the expression sum (map sqrt [1..130]).
Because $ has such a low precedence, we can rewrite that expression as sum $ map sqrt [1..130],
saving ourselves precious keystrokes!
When a $ is encountered, the expression on its right is applied as the parameter to the function on its left.

$ is sort of the equivalent of writing an opening parentheses and then writing a closing one on the far right side of the expression.
Because $ is right-associative, f (g (z x)) is equal to f $ g $ z x.

## 4) Function composition

```haskell
(.) :: (b -> c) -> (a -> b) -> a -> c
f . g = \x -> f (g x)
```

f must take as its parameter a value that has the same type as g's return value.
So the resulting function takes a parameter of the same type that g takes and returns a value of the same type that f returns.

Function composition is right-associative, so we can compose many functions at a time.
The expression f (g (z x)) is equivalent to (f . g . z) x.

Example:
replicate 2 (product (map (*3) (zipWith max [1,2] [4,5])))

could be rewritten as

replicate 2 . product . map (*3) $zipWith max [1,2] [4,5]

Another common use of function composition is defining functions in the so-called point free style (also called the pointless style).
Take for example this function:

```haskell
sum' :: (Num a) => [a] -> a
sum' xs = foldl (+) 0 xs
```

The xs is exposed on both right sides.
Because of currying, we can omit the xs on both sides,
because calling foldl (+) 0 creates a function that takes a list.
Writing the function as sum' = foldl (+) 0 is called writing it in point free style.