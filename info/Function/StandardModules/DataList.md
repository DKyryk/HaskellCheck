#Data.List 
The module is all about lists, obviously.
It provides some very useful functions for dealing with them.
We've already met some of its functions (like map and filter) because the Prelude module exports some functions
from Data.List for convenience.
You don't have to import Data.List via a qualified import because it doesn't clash with
any Prelude names except for those that Prelude already steals from Data.List.


> intersperse 

takes an element and a list and then puts that element in between each pair of elements in the list.

> intercalate 

takes a list of lists and a list. It then inserts that list in between all those lists and then flattens the result.

> transpose 

transposes a list of lists. If you look at a list of lists as a 2D matrix, the columns become the rows and vice versa.
