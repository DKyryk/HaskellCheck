#DataMap

Association lists (also called dictionaries) are lists that are used to store key-value pairs where ordering doesn't matter. For instance, we might use an association list to store phone numbers, where phone numbers would be the values and people's names would be the keys. We don't care in which order they're stored, we just want to get the right phone number for the right person.

The most obvious way to represent association lists in Haskell would be by having a list of pairs. The first component in the pair would be the key, the second component the value. Here's an example of an association list with phone numbers:
```
phoneBook =   
    [("betty","555-2938")  
    ,("bonnie","452-2928")  
    ,("patsy","493-2928")  
    ,("lucille","205-2928")  
    ,("wendy","939-8282")  
    ,("penny","853-2492")  
    ]  
```

>fromList 

function takes an association list (in the form of a list) and returns a map with the same associations.

>empty 

represents an empty map. It takes no arguments, it just returns an empty map.

>insert 

takes a key, a value and a map and returns a new map that's just like the old one, only with the key and value inserted.

>null 

checks if a map is empty.

>size 

reports the size of a map.

>singleton 

takes a key and a value and creates a map that has exactly one mapp

>lookup 

works like the Data.List lookup, only it operates on maps. 
It returns Just something if it finds something for the key and Nothing if it doesn't.
 
>member 

is a predicate takes a key and a map and reports whether the key is in the map or not.

>map
 
>filter 

work much like their list equivalents. Work with values
>toList 

is the inverse of fromList.
 

>keys

>elems 

return lists of keys and values respectively. 
keys is the equivalent of map fst . Map.toList and elems is the equivalent of map snd . Map.toList.
 
>fromListWith 

It acts like fromList, only it doesn't discard duplicate keys but it uses a function supplied to it to 
decide what to do with them. 
Let's say that a girl can have several numbers and we have an association list set up like this.

>insertWith 

is to insert what fromListWith is to fromList. 
It inserts a key-value pair into a map, but if that map already contains the key, 
it uses the function passed to it to determine what to do