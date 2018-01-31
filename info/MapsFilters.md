# Maps and filters

map takes a function and a list and applies that function to every element in the list, producing a new list.
Let's see what its type signature is and how it's defined.

```haskell
map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs
```

filter is a function that takes a predicate
(a predicate is a function that tells whether something is true or not, so in our case, a function that returns a boolean value)
and a list and then returns the list of elements that satisfy the predicate.
The type signature and implementation go like this:

```haskell
filter :: (a -> Bool) -> [a] -> [a]
filter _ [] = []
filter p (x:xs)
    | p x       = x : filter p xs
    | otherwise = filter p xs
```

All of this could also be achieved with list comprehensions by the use of predicates.
There's no set rule for when to use map and filter versus using list comprehension,
you just have to decide what's more readable depending on the code and the context.
The filter equivalent of applying several predicates in a list comprehension is
either filtering something several times or joining the predicates with the logical && function.

filter (<15) (filter even [1..20])
is same as
[ x | x <- [1..20], x < 15, even x]