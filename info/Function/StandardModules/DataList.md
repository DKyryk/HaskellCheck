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

>foldl' 

>foldl1' 

are stricter versions of their respective lazy incarnations

>concat 

flattens a list of lists into just a list of elements.

>concatMap 

is the same as first mapping a function to a list and then concatenating the list with concat

>and 

takes a list of boolean values and returns True only if all the values in the list are True.

>or 

is like and, only it returns True if any of the boolean values in a list is True

>any 
 
>all 

take a predicate and then check if any or all the elements in a list satisfy the predicate, respectively.

>iterate 

takes a function and a starting value. It applies the function to the starting value, 
then it applies that function to the result, then it applies the function to that result again, etc.
It returns all the results in the form of an infinite list.

>splitAt 

takes a number and a list. It then splits the list at that many elements, returning the resulting two lists in a tuple.

>takeWhile 

is a really useful little function. 
It takes elements from a list while the predicate holds and then when an element is encountered that 
doesn't satisfy the predicate, it's cut off. 
It turns out this is very useful

>dropWhile 

is similar, only it drops all the elements while the predicate is true. 
Once predicate equates to False, it returns the rest of the list.

>span 

is kind of like takeWhile, only it returns a pair of lists. 
The first list contains everything the resulting list from takeWhile would contain 
if it were called with the same predicate and the same list. 
The second list contains the part of the list that would have been dropped.

>break 

breaks spans the list until the predicate is first true. Doing break p is the equivalent of doing span (not . p).
 
>sort 

simply sorts a list. 
The type of the elements in the list has to be part of the Ord typeclass, 
because if the elements of a list can't be put in some kind of order, then the list can't be sorted.

>group 

takes a list and groups adjacent elements into sublists if they are equal.

>isInfixOf 

searches for a sublist within a list and returns True if the sublist we're looking for is somewhere inside the target list.

>isPrefixOf  

>isSuffixOf 

search for a sublist at the beginning and at the end of a list, respectively.

>elem  

>notElem 

check if an element is or isn't inside a list

>partition 

takes a list and a predicate and returns a pair of lists. 
The first list in the result contains all the elements that satisfy the predicate, the second contains all the ones that don't.

>find 

takes a list and a predicate and returns the first element that satisfies the predicate.
it returns that element wrapped in a Maybe value.

>elemIndex 

is kind of like elem, only it doesn't return a boolean value. 
It maybe returns the index of the element we're looking for. 
If that element isn't in our list, it returns a Nothing.

>elemIndices 

is like elemIndex, only it returns a list of indices, 
in case the element we're looking for crops up in our list several times. 
Because we're using a list to represent the indices, we don't need a Maybe type, 
because failure can be represented as the empty list, which is very much synonymous to Nothing

>findIndex 

is like find, but it maybe returns the index of the first element that satisfies the predicate. 

>findIndices 

returns the indices of all elements that satisfy the predicate in the form of a list.

>lines 

is a useful function when dealing with files or input from somewhere. 
It takes a string and returns every line of that string in a separate list.

>unlines 

is the inverse function of lines. It takes a list of strings and joins them together using a '\n'.

>words  

>unwords 

are for splitting a line of text into words or joining a list of words into a text

>nub 

It takes a list and weeds out the duplicate elements, returning a list whose every element is a unique.

>delete 

takes an element and a list and deletes the first occurence of that element in the list.

>\\\\ 

is the list difference function. 
It acts like a set difference, basically. 
For every element in the right-hand list, it removes a matching element in the left one.
```
ghci> [1..10] \\ [2,5,9]  
[1,3,4,6,7,8,10]  
ghci> "Im a big baby" \\ "big"  
"Im a  baby" 
```

>union 

also acts like a function on sets. 
It returns the union of two lists. 
It pretty much goes over every element in the second list and appends it to the first one if it isn't already in yet. 
Watch out though, duplicates are removed from the second list!

>intersect 

works like set intersection. It returns only the elements that are found in both lists.

>insert 

takes an element and a list of elements that can be sorted and inserts it into the last position where i
t's still less than or equal to the next element. 
In other words, insert will start at the beginning of the list and then keep going until it finds an element 
that's equal to or greater than the element that we're inserting and it will insert it just before the element.

###Generic versions

What length, take, drop, splitAt, !! and replicate have in common is that they take an Int as one of their parameters 
(or return an Int), even though they could be more generic and usable if they just took any type that's 
part of the Integral or Num typeclasses (depending on the functions). 
They do that for historical reasons. However, fixing that would probably break a lot of existing code. 
That's why Data.List has their more generic equivalents, named 
**genericLength, genericTake, genericDrop, genericSplitAt, genericIndex** and **genericReplicate.**

###Customized with functions

The nub, delete, union, intersect and group functions all have their more general counterparts called 
nubBy, deleteBy, unionBy, intersectBy and groupBy. 

The difference between them is that the first set of functions use == to test for equality, 
whereas the By ones also take an equality function and then compare them by using that equality function. 
group is the same as groupBy (==).

Similarly, the sort, insert, maximum and minimum also have their more general equivalents. 
Functions like groupBy take a function that determines when two elements are equal. 
sortBy, insertBy, maximumBy and minimumBy take a function that determine if one element is greater, smaller or equal to the other.
 