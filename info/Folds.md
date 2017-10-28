#Folds
Back when we were dealing with recursion,
we noticed a theme throughout many of the recursive functions that operated on lists.
Usually, we'd have an edge case for the empty list.
We'd introduce the x:xs pattern and then we'd do some action that involves a single element and the rest of the list.
It turns out this is a very common pattern, so a couple of very useful functions were introduced to encapsulate it.
These functions are called folds. They're sort of like the map function, only they reduce the list to some single value


A fold takes a binary function, a starting value (I like to call it the accumulator) and a list to fold up.
The binary function itself takes two parameters.
The binary function is called with the accumulator and the first (or last) element and produces a new accumulator.
Then, the binary function is called again with the new accumulator and the now new first (or last) element, and so on.
Once we've walked over the whole list, only the accumulator remains, which is what we've reduced the list to.


First let's take a look at the "foldl" function, also called the left fold.
It folds the list up from the left side.
The binary function is applied between the starting value and the head of the list.
That produces a new accumulator value and the binary function is called with that value and the next element, etc.


The right fold, "foldr" works in a similar way to the left fold, only the accumulator eats up the values from the right.
Also, the left fold's binary function has the accumulator as the first parameter
and the current value as the second one (so \acc x -> ...),
the right fold's binary function has the current value as the first parameter and the accumulator
as the second one (so \x acc -> ...).
It kind of makes sense that the right fold has the accumulator on the right, because it folds from the right side.


The "foldl1" and "foldr1" functions work much like foldl and foldr, only you don't need to provide them with an explicit starting value.
They assume the first (or last) element of the list to be the starting value and then start the fold with the element next to it.


"scanl" and "scanr" are like "foldl" and "foldr", only they report all the intermediate accumulator states in the form of a list.
There are also "scanl1" and "scanr1", which are analogous to "foldl1" and "foldr1".

```
ghci> scanl (+) 0 [3,5,2,1]
[0,3,8,10,11]
ghci> scanr (+) 0 [3,5,2,1]
[11,8,3,1,0]
ghci> scanl1 (\acc x -> if x > acc then x else acc) [3,4,5,3,7,9,2,1]
[3,4,5,5,7,9,9,9]
ghci> scanl (flip (:)) [] [3,2,1]
[[],[3],[2,3],[1,2,3]]
```  