#DataSet

The Data.Set module offers us, well, sets. Like sets from mathematics. 
Sets are kind of like a cross between lists and maps. 
All the elements in a set are unique. 
And because they're internally implemented with trees (much like maps in Data.Map), they're ordered. 
Checking for membership, inserting, deleting, etc. is much faster than doing the same thing with lists. 
The most common operation when dealing with sets are inserting into a set, checking for membership and converting a set to a list.

>fromList 

It takes a list and converts it into a set.

>toList

Converts set to list
###Next functions work the same way as list's functions
>intersection

>difference

>union

>null 

>size

>member

>empty

>singleton 

>insert 

>delete 

>map

>filter

