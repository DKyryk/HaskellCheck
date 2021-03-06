# Type classes define behavior

A type class is an interface that defines some behavior.
If a type is an instance of a type class,
then it supports and implements the behavior the type class describes.
Everything before => symbol in type description is called a class constraint. 

Existing type classes:
1) **Eq** - used for types that support equality check (operators ==, /=)

2) **Ord** - used for types that support order of values and therefore comparison operators like > or <

3) **Show** - used for types that could be converted to string (For example Int 1 could be converted to "1")

4) **Read** - types that could be converted from String ("True" converted to True [Read to Bool])

5) **Enum** - types that support sorted order of values.
So for any value you could take previous or next one, create an interval of values
Types of this class are (), Bool, Char, Ordering, Int, Integer, Float, Double.

6) **Bounded** - types that have upper and lower bounds. Like max Int, max boolean.
Tuple is also a bounded type if all values inside are bounded

7) **Num** - digit types (Int, Integer, Float, Double). Requirement for being a Num class type - being a Show and Eq type as well

8) **Floating** - floating point digits (Float and Double)

9) **Integral** - integral digits (Int, Integer)
