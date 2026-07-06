# Libraries for Data Science

As mentioned before, python is a general purpose programming language.
What allowed python to become a favorite of data scientists, is the support of community developed libraries.
In this chapter, we will discuss introduce a some of these libraries.

## `numpy` 

The library `numpy` allows python to perform vectorized calculations and matrix operations.
It offers advanced features beyond the capabilities of built-in python lists and tuples.
It also provides a library of mathematical functions, random number generators, etc.
Compared to built-in functions, python is able to perform efficient calculations by leveraging C code.

### `ndarray`

NumPy relies on its own compound class called `ndarray` (which stands for n-dimensional array, sometimes also referred to as `array`). 
Here's a simple one-dimensional array, created using the constructor `array()`

```{code-cell} ipython3
import numpy as np

np.array([0, 1, 2, 3])
```

You can create multidimensional arrays by providing the constructor with a list of list of numbers:

```{code-cell} ipython3
mat = np.array([[1,2,3],[4,5,6]])
mat
```

These `array` class comes with useful attributes such as:

- `shape` which represents the dimensions of the array
- `ndim` which represents the number of dimensions of the array 
- `dtype` which represents the datatype of the array's elements
- `size` which represents the number of elements in the array.

```{code-cell} ipython3
mat.shape
```

```{code-cell} ipython3
mat.ndim
```

```{code-cell} ipython3
mat.dtype.name #use the dtype.name to show the string representation of the datatype
```

```{code-cell} ipython3
mat.size
```

You can also create a NumPy array using other useful constructors:

```{code-cell} ipython3
np.zeros((4, 5))
```

```{code-cell} ipython3
np.ones((4, 5))
```

```{code-cell} ipython3
np.arange(5, 20, 0.5)
```

When using arithmetic operations (`+`, `*`, `-`, `/`) on NumPy arrays, the operations are treated as element wise operations.

### NumPy Broadcasting

You can use these operations on any pair of arrays with compatible shapes.
Shape compatibility in NumPy works with respect to the NumPy broadcasting rules.
NumPy first compares number of dimensions, if the two operands have unequal dimensions, NumPy implicitly adds dimensions of size one to the left of the lower-dimensional operand.
For example, when attempting to perform operations on a pair of arrays with the shapes: $3 \times 4 \times 5$, and $5$, the second array is converted to a $1 \times 1 \times 5$ array.

With the number of dimensions settled, NumPy checks if each dimension has compatible sizes.
Sizes are compatible if they are equal or one of the sizes is exactly one.
If a dimension is exactly one, the array is "stretched" to accommodate the larger array.

For example, given:

```{code-cell} ipython3
A = np.arange(1,61).reshape((3,4,5)) # reshape is a method used change the dimensions of the array
B = np.array([1,2,3,4,5])
```

Since `B` has two dimensions, it is implicitly reshaped into a $1 \times 1 \times 5$ array.
Based on the broadcasting rules `A` and `B` of compatible sizes.
To accommodate the elements of `A`, the elements of `B` are stretched to a goal shape of $3 \times 4 \times 5$.
First, it is stretched into a $4 \times 5$ array by copying itself four times, similar to the following operation:

```{code-cell} ipython3
twoDimensions = np.array([B] * 4) # stretches using list multiplication
twoDimensions
```

The resulting array is then stretched 3 times to reach the goal shape $3 \times 4 \times 5$:

```{code-cell} ipython3
threeDimensions = np.array([twoDimensions] * 3)
threeDimensions
```

With the sizes now matching it applies the calculation.
You can compare the calculations indeed match:

```{code-cell} ipython3
print("product from automatic broadcasting:")
print(A * B)
print("product from explicit stretching")
print(A * threeDimensions)
```

Here's another example involving an array of size $4$ and an array of size $5 \times 1$:

```{code-cell} ipython3
C = np.array([1,2,3,4])
D = np.array([1,2,3,4,5]).reshape((5,1))
```

To accommodate each other, both arrays are stretched into $4 \times 5$:

```{code-cell} ipython3
stretchedC = np.array([C] * 5)
stretchedD = np.repeat(D, 4, axis = 1) # stretches the column into 5 columns

print("product from automatic broadcasting")
print(C * D)
print("product from explicit stretching")
print(stretchedC * stretchedD)
```

NumPy also features special mathematical functions that can be applied to scalar values or arrays.
When applied to arrays these functions are applied element-wise.
These functions are known as universal functions (`ufunc`). You can find a reference of universal functions [here](https://numpy.org/devdocs/reference/ufuncs.html).

```{code-cell} ipython3
arr = np.arange(0,1,0.2)
print(np.sqrt(arr))
print(np.round(arr,10))
print(np.ceil(arr))
```

Arrays in NumPy also support advanced indexing, including slicing, logical indexing, and iteration:

```{code-cell} ipython3
arr = np.arange(0,20)
print(arr[10:15])
print(arr[3:12:2])
print(arr[:5:-2])
print(arr[arr % 2 == 0])
```

## `pandas`

The `pandas` library features is used for all manners of data analysis tasks.
It features new classes like `DataFrame` and `Series`.
Behind the scenes it is also supported by `numpy`, allowing it to harness `numpy`'s vectorization and indexing.

### `Series`

The class `Series` is a core data structure in `pandas` used to represent vectors of any datatype.

There are multiple ways to construct a `Series` in the example below we create a series by passing a `numpy` array as an argument to the constructor.

```{code-cell} ipython3
import numpy as np
import pandas as pd

pd.Series(np.arange(100,601,100))
```

All `Series` objects come with indices.
By default indices are set to $[0, n-1]$ for a series with n elements.
Indices can be any datatype, as long as the number of elements in the series match the number of elements in index.
You can think of indices as the dictionary keys and the elements themselves as the values.

```{code-cell} ipython3
pd.Series([10,1,2], index = ["a", "b", "c"])
```

```{code-cell} ipython3
pd.Series([10,1,2], index = [True, False, True])
```

> As shown above, indices don't need to be unique.
> But in most cases, you would want unique indices to avoid indexing issues.

A `Series` supports vectorized functions, element-wise operations and advanced indexing.
Doing these operations simply delegates it to the `numpy` behind the scenes.

```{code-cell} ipython3
s = pd.Series(np.arange(100, 601, 100), index = ["a","b","c","d","e","f"])
s[["b", "d", "a"]]
```

```{code-cell} ipython3
print(s * 3)
print(s + s)
print(s[s % 200 == 0])
```

You can also use `numpy`'s universal functions on `Series` instances.
When you do this, the function will be applied element-wise.

```
np.sqrt(s)
```

Pandas will try to coerce the `Series` elements into numeric types when used on `ufunc`s.
If the elements can't be coerced, it will result into an error.

```{code-cell} ipython3
np.power(2,pd.Series([True, False, True]))
```

Note that when performing element-wise operations involving multiple series, elements are not matched by position.
Instead, matching indices are paired up, and the operations are performed on each pair.

```{code-cell} ipython3
t = pd.Series([1,2,3,4], index = ["g", "f", "e", "c"])
s + t
```

In the example above, to construct the sum of `s` and `t`, `s["c"]` and `t["c"]` are added, `s["e"]` and `t["e"]` are added and `s["f"]` and `t["f"]` are added.
Elements without a pair will have a sum of `NaN` which stands for "Not a Number".
If you want to exclude `NaN` elements, you can filter them out using the `dropna()` method.

```{code-cell} ipython3
(s + t).dropna()
```

### `DataFrame`

`DataFrames` are representations of relational tables built by combining one or more `Series`.
Each `Series` in a `DataFrame` represents a table column.
All `Series` composed under one `DataFrame` are aligned under one index.

There are multiple ways to construct `DataFrames`.
The example below constructs a `DataFrame` from a given 2d array and a given column list.

```{code-cell} ipython3
df = pd.DataFrame(
    data = np.arange(10, 121, 10).reshape((3,4)), 
    columns = ["a","b","c","d"]
)
```

> Since an index was not specified, it will default to `[0,1,2]`.

When you apply `numpy`'s universal function on `DataFrame` instances, the functions are applied to each series in the `DataFrame`, coercing the types if necessary.

```{code-cell} ipython3
np.sqrt(df)
```

When you an operation involves two `DataFrame` instance, the operations are applied to pairs of elements with matching column names and indices.
Unpaired elements will evaluate to `NaN`.

```{code-cell} ipython3
df2 = pd.DataFrame(
    data = np.arange(0,6).reshape((2,3)), 
    columns = ["a","b","c"]
)
df + df2
```

## `matplotlib`
