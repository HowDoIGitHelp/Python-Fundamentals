---
jupytext:
  text_representation:
    extension: .md
    format_name: myst
    format_version: 0.13
    jupytext_version: 1.19.4
kernelspec:
  display_name: Python 3 (ipykernel)
  language: python
  name: python3
---

# More about sequences
## `list`/`tuple`/`string` slicing

Given a python list, tuple, or string you can easily extract a **slice** using advanced indexing.
A slice is a list/tuple/string formed from the same elements of a given list.
For example, you can extract a slice that contains first 3 elements of a list using the following indexing:

```{code-cell} ipython3
items = [0,1,2,3,4,5,6,7,8]
items[0:3]
```

The slice `items[i:j]` corresponds to the list containing the elements from position `i` until `j-1`.
In the case above, with the index `[0:3]` we extract the elements from position 0 until position $3-1$.
Here are some more examples

```{code-cell} ipython3
items[0:4]
```

```{code-cell} ipython3
items[2:2]
```

```{code-cell} ipython3
items[3:-1]
```

If you omit the first index in the slice by default python starts extracting from the first element.
On the other hand, if you omit the second index in the slice, by default python will extract up to the last element.

```{code-cell} ipython3
items[:2]
```

```{code-cell} ipython3
items[:4]
```

```{code-cell} ipython3
items[2:]
```

```{code-cell} ipython3
items[:]
```

If you add a third index in the slice (e.g.
`items[i:j:k]`) python will skip `k-1` elements when extracting

```{code-cell} ipython3
items[1:6:2]
```

```{code-cell} ipython3
items[1:6:1]
```

```{code-cell} ipython3
items[::3]
```

```{code-cell} ipython3
items[::-1]
```

```{code-cell} ipython3
items[1::2]
```

Slicing works for tuples and strings as well

```{code-cell} ipython3
coords = 0,1,2,3,4,5

coords[1:4:2]
```

```{code-cell} ipython3
word = 'sequences'

word[2:7:2]
```

Take note that just like item retrieval, slicing does not change the value of the original sequence.
This is the reason why slicing works on immutable types like tuples and strings.
Slicing a sequence creates a new value and the original value is unaffected

```{code-cell} ipython3
items = [0,1,2,3,4,5,6,7,8]
print(items[0:3])
print(items)
```

## Some more sequence related functions

Here are functions related to sequences that are can be helpful for us

+++

### `zip()` 

The `zip()` accepts n sequences and combines them together like a zipper.
The first element of the zipped sequence is a tuple containing the first elements of all the sequences.
The second element of the zipped sequence is a tuple containing the second elements of all the sequence and so on until one of the sequences runs out of elements.

The value returned by the `zip()` function is a zip object.
This object has to be coerced into the correct sequence type first so that it can be used

```{code-cell} ipython3
tuple(zip([0,1,2,3,4],(0.0,0.1,0.2,0.3),'xyz'))
```

```{code-cell} ipython3
list(zip([0,1,2,3,4],(0.0,0.1,0.2,0.3),'xyz'))
```

### `enumerate()`

The `enumerate()` function zips a sequence with its indices.
Just like `zip()`, `enumerate()`'s result should be cast to the correct sequence type

```{code-cell} ipython3
tuple(enumerate('abcde'))
```

### `range()`

The `range()` function helps us create sequences given a range of values.
For example, if we want to create a list of integers from 1 to 10, we can use `range()` as such:

```{code-cell} ipython3
list(range(1,11)) #the results of range() must be coerced into the correct sequence type
```

A tuple of elements from 100 to 1000 with each with each element increasing by 100 each:

```{code-cell} ipython3
tuple(range(100,1001,100)) # we write 1001 as the range end since python always excludes the range end
```

If we pass one arguments to `range()` python will start as zero and end at the passed argument minus 1:

```{code-cell} ipython3
list(range(5))
```

The `range()` function is also the most efficient way of creating simple `for` loops:

```{code-cell} ipython3
for i in range(10,0,-1):
    print(i)
```

# Comprehension

Python also allows us to quickly create sequences from for loops.
This is done through sequence **comprehension**.
Comprehension works by collecting the results of a for loop into a list.
For example, the code below stores the squares of a list of integers into the list `newList`:

```{code-cell} ipython3
newList = []
for elem in [1,2,3,4]:
    newList.append(elem*elem)

newList
```

This code can be summarized using comprehension as follows:

```{code-cell} ipython3
newList = [elem*elem for elem in [1,2,3,4]]
```

This helps us quickly create populated sequences just by describing the elements in a for loop

```{code-cell} ipython3
tuple(float(i) for i in range(10)) #without the tuple() coercion, a comprehension will result in a generator object
```

```{code-cell} ipython3
{key:val for key,val in zip('abcd',range(4))}
```

## Sets

One more datatype we missed in python is the set datatype.
A `set` in python is similar to sets in math.
Sets do not guarantee the order of the elements, and unlike lists or tuples, its values cannot repeat.
Sets are created by surrounding a sequence of expressions in curly braces (`{}`)

```{code-cell} ipython3
values = {'a','b','c','d','a','d'}
print(values)
print(len(values))
```

> Notice how duplicated values are omitted when sets are evaluated.

Python sets can also be operated on like mathematical sets.
We can perform, union, intersection, and difference

```{code-cell} ipython3
values.union({'c','d','e','f'})
```

```{code-cell} ipython3
values.intersection({'c','d','e','f'})
```

```{code-cell} ipython3
values - {'c','d','e','f'}
```

Sets also support `for` loops and comprehensions.
But be wary when using them in for loop, because the order of elements of a set may not be what you expect:

```{code-cell} ipython3
for elem in {5,4,3,2,1,0,1,2}:
    print(elem)
```

```{code-cell} ipython3
{i for i in range(10,1,-1)}
```
