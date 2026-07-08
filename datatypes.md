# Datatypes

Python supports plenty of literals and data types, most of these you can discover on your own.

For purposes of this module, we'll only look at a few: `int`, `float`, `str`, `bool`, `list`, and `dict`.
However, we might come across the other data types along the way.

## Numerical types

These types represent numbers and will play along well with the arithmetic operators.

### `int`

The `int` datatype stores whole numbers and represents Mathematical integers.
Just like Mathematical integers, the `int` datatype is unbounded.
That is, we can represent as big or as small numbers as we want.

Python also offers `int()` to coerce values to be represented as an `int`:

```{code-cell} ipython3
int(2.5)
```

```{code-cell} ipython3
int('12345')
```

### `float`

Represents floating point numbers.
These are numbers that have a fractional part.

We also have `float()` to coerce values to be a `float`:

```{code-cell} ipython3
float(2)
```

```{code-cell} ipython3
float()
```

```{code-cell} ipython3
float("123.456")
```

### Mixing types

Mixing `int` and `float` together in an expression will typically result in the `int` being converted to a `float` first.

```{code-cell} ipython3
2.0 + 3
```

```{code-cell} ipython3
5 * 10.0
```

```{code-cell} ipython3
1.0 // 2.0
```

The `int`, `3`, is implicitly converted to a `float` and then added with the other `float`.
Thus, we get a `5.0` as we're adding two `float`s.

## Text sequence type

Python represents words and characters as strings.
Strings are immutable sequences of characters.

Python accepts either single or double quotes to represent strings:

```{code-cell} ipython3
"Hello"
```

```{code-cell} ipython3
"Hello"
```

```{code-cell} ipython3
'Sam says,\n "jump!"'
```

Even triple quotes are accepted:

```{code-cell} ipython3
"""Triple
quotes
allow
multi
line"""
```

`\n` is a special escape sequence that represents a linebreak (see more escape sequences: <https://docs.python.org/3/reference/lexical_analysis.html#escape-sequences>).
If we print it out with `print`, the linebreaks are displayed as actual linebreaks:

```{code-cell} ipython3
print("""Triple
quotes
allow
multi
line""")
```

`str()` coerces values to be a string.

```{code-cell} ipython3
str(-5.0)
```

```{code-cell} ipython3
str(1+3)
```

```{code-cell} ipython3
str(-5.0)
```

```{code-cell} ipython3
str(1 + 3)
```

```{code-cell} ipython3
a = 23 / 7
str(a)
```

### Concatenation

String expression can be combined to form a new longer string expression.
This is done through the operation concatenation (`+`).

```{code-cell} ipython3
"Hello" + " " + "world"
```

### Replication

Python strings support the `*` operator though.
This multiplies strings to repeat them:

```{code-cell} ipython3
"Hello"*5
```

```{code-cell} ipython3
"5" + ",000" * 3
```

```{code-cell} ipython3
"A" * 10
```

## Boolean type

This is a value to represent true and false values.

In Python, we use the keywords `True` and `False`:

```{code-cell} ipython3
True
```

```{code-cell} ipython3
False
```

### Boolean operators

We can combine boolean expressions using the operators `and`, `or`, `not`.

`and`:

```{code-cell} ipython3
True and True
```

```{code-cell} ipython3
True and False
```

`or`:

```{code-cell} ipython3
True or True
```

```{code-cell} ipython3
True or False
```

`not`:

```{code-cell} ipython3
not True
```

```{code-cell} ipython3
not False
```

#### Compound Boolean

And just like any expression we can combine boolean expression into compound expressions

```{code-cell} ipython3
(True and True) and (True and False)
```

```{code-cell} ipython3
x = True
y = False
x or (not y)
```

#### Truth table

Refer to the truth table below to see how operators behave

| or       | left operand  | right operand |
| --------- | ----- | ----- |
| **True**  | True  | True  |
| **True**  | True  | False |
| **True**  | False | True  |
| **False** | False | False |

| and        | left operand  | right operand |
| --------- | ----- | ----- |
| **True**  | True  | True  |
| **False** | True  | False |
| **False** | False | True  |
| **False** | False | False |

+++

## Sequence type

A sequence type is used to store multiple values a collective structure. There are multiple sequence datatypes in python: Lists, tuples, and dicts

### Lists

For Python, the basic type for sequences is the `list`.
List literals are created with square brackets, `[]`.

```{code-cell} ipython3
[1,2-1,3+3,True,'five']
```

```{code-cell} ipython3
[5,0]
```

```{code-cell} ipython3
[]
```

The list `[1,2,3,True,'five']` is a list containing the expressions, `1`,`2`,`3`, True, `'five'`. The expressions in a list are known as its **elements**. The list `[5,0]` is a list containing the elements `5` and `0`. The list `[]` is an empty list. An empty list is a list that doesnt have any elements inside of it. 

As we can see, the elements inside a list can be expressions of any datatype. And since lists are expressions themselves, we can also put lists inside lists.

```{code-cell} ipython3
[[1,2,3,[4]],[],[5,6]]
```

Note that while lists can contain a mix of different expression types, it is generally not advisable to create a mixed list. Lists and sequences in general are interacted with as a collective. A mixed collective of different types can result in unexpected behavior and type incompatiblilty.

+++

### Inserting items

A lists contents can be changed using append and delete statements. Appending to list means adding an element at the end.

```{code-cell} ipython3
items = ["Apple", "Banana", "Cherry"]
items.append("Durian")
items
```

Items can also be inserted in arbitrary positions within a list

```{code-cell} ipython3
items.insert(2, "Orange")
items
```

Using `items.insert(2,"Orange")`, inserts an item in position 2 of the list 

> Note how the value of the list variable `items` was modified after using `append` and insert

+++

### Retrieving items

We can retrieve items from a list using list indexing. An indexing expression retrieves an element of a list at a specified position.

```{code-cell} ipython3
items[0]
```

```{code-cell} ipython3
items[2]
```

```{code-cell} ipython3
i = 3
items[i]
```

```{code-cell} ipython3
items[i-1]
```

Indexing with `items[0]` evaluates into the element at position `0` of `items`. Note that lists and other python sequences start at position 0. The first item is located at position 0 (also known as index 0) and the last item is located at position size-1 (also known as index size-1)

+++

### Updating items

We can also modify a list by reassigning the value of a specific element.

```{code-cell} ipython3
items = ["Apple", "Banana", "Cherry"]
items[2] = "Strawberry"
items
```

Running the cell above will overwrite the element at position 2/index 2 of the list. In this case, 'Orange' is overwritten into 'Strawberry'

+++

### Deleting items

To remove an item from the list, we have `del` and `.remove()`.

To remove an item based on a given index, use `del`:

```{code-cell} ipython3
items = ["Apple", "Banana", "Cherry"]
del items[1]
```

```{code-cell} ipython3
items
```

In the case above, the element at index 1, is `Banana`. Running `del items[1]` deletes the element at index 1 which is `Banana`. When we evaluate items again we see that `Banana` is deleted from `items`

+++

We can also delete items based on value. This is done through the remove function. This function removes the first item that matches the specified value

```{code-cell} ipython3
items = ['Apple', 'Cherry', 'Banana', 'Cherry']
items.remove('Cherry')
items
```

Note how the second instance `'Cherry'` is not deleted since `remove` only deletes the first match. 

### Length

You can check the length/size of a list using `len()`. Using it on a list will evaluate to an integer that represents the number of elements in said list.

```{code-cell} ipython3
len([1,2,3,4])
```

```{code-cell} ipython3
len([0])
```

```{code-cell} ipython3
len(items)
```

### Concatenation

You can concatenate 2 list expressions together to form a new list. The process works similarly as string concatenation. It will evaluate into a new list where the elements of the right operand is attached to the end of the left operand

```{code-cell} ipython3
[1,2,3] + [4,5]
```

```{code-cell} ipython3
items1 = ['Apple','Banana','Cherry']
items2 = ['Durian']
longerList = items1 + items2
```

Unlike `append()`, using concatenation does not change the values of the original list. The concatenation expression evaluates into a new combined list

```{code-cell} ipython3
items1
```

```{code-cell} ipython3
items2
```

```{code-cell} ipython3
longerList
```

## Tuples

Python tuples are just like the Python list, except that they are **immutable**. That is, they are lists that cannot be modified after creation.

We can create a tuple by separating values with a `,`:

```{code-cell} ipython3
(1,2)
```

> Python represents tuples as parentheses. You can also use parentheses on your tuples to make it more readable

+++

Reviewing the list operations discussed above, we can use operations on tuples that do not result in some form of modification. Retrieval, length, and concatenation are allowed

```{code-cell} ipython3
coords = 3.1,1.2
coords[1]
```

```{code-cell} ipython3
len(coords)
```

```{code-cell} ipython3
coords + (2.1,)
```

> The expression `(2.1,)` is evaluated as a tuple with one element. Just writing `2.1` will evaluate into a float

Appending, deletion, removal, and insertion are not allowed

```{code-cell} ipython3
:tags: [raises-exception]

coords.append(4.0)
```

```{code-cell} ipython3
:tags: [raises-exception]

del coords[1]
```

```{code-cell} ipython3
:tags: [raises-exception]

coords.remove(2.1)
```

```{code-cell} ipython3
:tags: [raises-exception]

coords.insert(0,0.1)
```

### Strings as tuples

As is turns out, string expressions are similar to tuples of characters. You can interact with a string expression just like you will any tuple expression. Just keep in mind that the elements of a string can only be single characters.

```{code-cell} ipython3
word = 'snakes'
word[2]
```

```{code-cell} ipython3
len(word)
```

### Packing and unpacking

We've already seen what's called *tuple packing*.

```{code-cell} ipython3
coords = 2.1, 0.3, -5.0
coords
```

The above statement packs the 3 values together down into a tuple and then assigns it to `coords`.

The reverse is also possible, called *sequence unpacking*.

Here's an example of a sequence unpack:

```{code-cell} ipython3
x,y = (2.5,13.1)
x
```

```{code-cell} ipython3
y
```

```{code-cell} ipython3
coords
```

```{code-cell} ipython3
a,b,c = coords
a
```

The tuple on the right-hand side is unpacked and assigned into the variables `x` and `y`.
`x` gets assigned `2.5` and `y` is assigned `13.1`.

Sequence unpacking requires the correct number of left-hand side variables to the number of right-hand side items.

Note that it's called *sequence* unpacking.
This means it also works for other sequences, such as lists and even `str`.

+++

## Dictionaries

Dictionaries allow us to map almost arbitrary keys to values.
For now, we can think of dictionaries as lists that allow us to "index" by a key. Unlike lists these keys do not have to be integers, it can be any hashable[^hashable] expression.

[^hashable]: https://docs.python.org/3/glossary.html#term-hashable

> Hashable values are values that are immutable, such as `int`, `float`, `str`, and other types that at least implement the `__hash__()` method. 

Dictionaries are created with `{}`.
Each key-value entry of the dictionary is separated by a `:`, with the key on the left and its value to the right.

```{code-cell} ipython3
{"one": 1, "two": 2, "three": 3, "four": 4}
```

In the dictionary above, we use the string expression `"one"` as the key for the value `1`, `"two"` as the key for the value `2`, and so on. Similar to lists, tuples, and strings, we can retrieve values by indexing using the keys

```{code-cell} ipython3
data = {"name": "Fish", "quantity": 3, "price": 412.25}
data["quantity"]
```

```{code-cell} ipython3
key = "price"
data[key]
```

The expression `data["name"]` retrieves the item associated to the key `"name"`, which in this case is `"Fish"`.

+++

Adding an entry to the dictionary is also done by first retrieving an item using indexing and assigning a value to it.

```{code-cell} ipython3
data["date"] = "2 Feb 2024"
data
```

Updating is done the exact same way, but this time we retrieve an already existing entry and then reassigning a new value to it:

```{code-cell} ipython3
data["price"]
```

```{code-cell} ipython3
data["price"] = 450.00
data
```

```{code-cell} ipython3
data["price"]
```

Deleting a key is done with `del`:

```{code-cell} ipython3
del data["date"]
data
```

```{code-cell} ipython3
:tags: [raises-exception]

data["date"]
```

> Now that the entry associated to `"date"` is now delete. Trying to retrieve it through indexing will cause a `KeyError`

+++

## Type compatibility

When it comes to expressions with operations, we must take into account if the operation is compatible with the datatype of the operands and vice versa. For example, we can expect that the addition operation (`+`) is compatible with numeric types.

```{code-cell} ipython3
1 + 2
```

```{code-cell} ipython3
2.0 + 1.1
```

```{code-cell} ipython3
1 + 2.2
```

Some operation-operand combinations are not compatible, an example of this is discussed earlier, strings and (`-`)

```{code-cell} ipython3
---
editable: true
slideshow:
  slide_type: ''
tags: [raises-exception]
---
'abc' - 'a'
```

Trying to evaluate incompatible expressions will cause a `TypeError` as seen above

+++

Sometimes you might expect values to be compatible but they are actually not

```{code-cell} ipython3
:tags: [raises-exception]

'123' + 4
```

In cases like this if you concatenate the two expression, you must explicitly apply the necessary coercions

```{code-cell} ipython3
'123' + str(4)
```

Or if you were intending to add

```{code-cell} ipython3
int('123') + 4
```

In some cases, you might expect types to be incompatible but in fact they actually are

```{code-cell} ipython3
True + True
```

> When using numeric operations, python coerces booleans into their integer representations. `True` is coerced into `1` and `False` is coerced into 0

```{code-cell} ipython3
(True * 3) + False
```

## Python Operators Overview

You can refer to the following table for a list of all the operators available in python:

### Arithmetic

These operators are mainly used for numerical calculations. But can also be used for non-numerical expressions (e.g. addition as concatenation, multiplication as repetition).


| Operator | Name              | Example | Evaluation         |
| -------- | ----------------- | ------- | ------------------ |
| `+`        | Addition          | `10 + 3`  | `13`                 |
| `-`        | Subtraction       | `10 - 3`  | `7`                  |
| `*`        | Multiplication    | `10 * 3`  | `30`                 |
| `/`        | Division          | `10 / 3`  | `3.3333333333333335` |
| `%`        | Modulus/Remainder | `10 % 3`  | `1`                  |
| `**`       | Exponentiation    | `10 ** 3` | `1000`               |
| `//`       | Floor division    | `10 // 3` | `3`                  |



### Assignment 

These operators change the values of the variables on the left-hand side

| Operator | Example       | Same As         |
| -------- | ------------- | --------------- |
| `=`        | `x = 5`         | `x = 5`           |
| `+=`       | `x += 3`        | `x = x + 3`       |
| `-=`       | `x -= 3`        | `x = x - 3`       |
| `*=`       | `x *= 3`        | `x = x * 3`       |
| `/=`       | `x /= 3`        | `x = x / 3`       |
| `%=`       | `x %= 3`        | `x = x % 3`       |
| `//=`      | `x //= 3`       | `x = x // 3`      |
| `**=`      | `x **= 3`       | `x = x ** 3`      |
| `&=`       | `x &= 3`        | `x = x & 3`       |
| `\|=`      | `x \|= 3`       | `x = x \| 3`      |
| `^=`       | `x ^= 3`        | `x = x ^ 3`       |
| `>>=`      | `x >>= 3`       | `x = x >> 3`      |
| `<<=`      | `x <<= 3`       | `x = x << 3`      |
| `:=`       | `print(x := 3)` | `x = 3`, `print(x)` |

### Comparison operator

These operators compare comparable types (like `ints` and `float`s) and returns a boolean literals depending on the comparison

| Operator | Name                     | Example   | Evaluation |
| -------- | ------------------------ | --------- | ---------- |
| `==`     | Equal                    | `10 == 3` | `False`    |
| `!=`     | Not equal                | `10 != 3` | `True`     |
| `>`      | Greater than             | `10 > 3`  | `True`     |
| `<`      | Less than                | `10 < 3`  | `False`    |
| `>=`     | Greater than or equal to | `10 >= 3` | `True`     |
| `<=`     | Less than or equal to    | `10 <= 3` | `False`    |

### Boolean operators

These operators are used on boolean expressions

| Operator | Description                                               | Example          | Evaluation |
| -------- | --------------------------------------------------------- | ---------------- | ---------- |
| `and`    | `True` if left and right evaluate to `True`               | `True and False` | `False`    |
| `or`     | `True` if at least one of the expressions evaluate `True` | `True or False`  | `True`     |
| `not`    | Negate the result                                         | `not True`       | `False`    |

### Identity operators

These operators are used to check if the left operand evaluate into the same instance as the right operand (more about instances in a future discussion)


| Operator | Description                               | Example      |
| -------- | ----------------------------------------- | ------------ |
| `is`     | evaluates `True` of left is the same as right | `x is y`     |
| `is not` | evaluates `False` if left is the same as right | `x is not y` |

### Membership operators

These operators are used to check if the left operand is a member of the right operand. Right operand can be sequence types like lists, tuples, strings, and dicts

| Operator | Description                                    | Example            | Evaluation |
| -------- | ---------------------------------------------- | ------------------ | ---------- |
| `in`     | evaluates `True` of left is a member of right  | `1 in [1,2,3]`     | `True`     |
| `not in` | evaluates `False` if left is a member of right | `1 not in [1,2,3]` | `False`     |

### Operator precedence

As discussed in the the topic Expressions, ambiguous expressions are evaluate based on precedence rules. The following table arranges these operators in decreasing priority. Operations on the top of the table are prioritized first.

| Operator                                                     | Description                                           |
| ------------------------------------------------------------ | ----------------------------------------------------- |
| `()`                                                         | Parentheses                                           |
| `**`                                                         | Exponentiation                                        |
| `+x`   `-x`   `~x`                                           | Unary plus, unary minus, and bitwise NOT              |
| `*`   `/`   `//`   `%`                                       | Multiplication, division, floor division, and modulus |
| `+`   `-`                                                    | Addition and subtraction                              |
| `==`   `!=`   `>`   `>=`   `<`   `<=`   `is`   `is not`   `in`   `not in` | Comparisons, identity, and membership operators       |
| `not`                                                        | NOT                                                   |
| `and`                                                        | AND                                                   |
| `or`                                                         | OR                                                    |
