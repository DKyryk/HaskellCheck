# Custom type

>data

keyword describes a new type.

The part before the = denotes the type.
The parts after the = are value constructors.
They specify the different values that this type can have.
The | is read as or.
Both the type name and the value constructors have to be capital cased.

For example boolean type description is

```haskell
data Bool = False | True
```

So when we write a value constructor, we can optionally add some types after it and those types define the values it will contain.
Value constructors are actually functions that ultimately return a value of a data type.

It's very important to distinguish between the type constructor and the value constructor.
When declaring a data type, the part before the = is the type constructor and the constructors after
it (possibly separated by |'s) are value constructors.

## Record syntax

Data type could be created with named parameters

Instead of just naming the field types one after another and separating them with spaces, we use curly brackets.
First we write the name of the field and then we write a double colon :: and then we specify the type.
For example:

```haskell
data Person = Person {
firstName :: String,
lastName :: String,
age :: Int,
height :: Float,
phoneNumber :: String,
flavor :: String} deriving (Show)
```

Record syntax creates functions that lookup fields in the data type.

## Type parameters

Type constructors can take types as parameters to produce new types.

```haskell
data Maybe a = Nothing | Just a
```

The a here is the type parameter.
And because there's a type parameter involved, we call Maybe a type constructor.
Depending on what we want this data type to hold when it's not Nothing,
this type constructor can end up producing a type of Maybe Int, Maybe Car, Maybe String, etc.
No value can have a type of just Maybe, because that's not a type per se, it's a type constructor.
In order for this to be a real type that a value can be part of, it has to have all its type parameters filled up.