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

# Functions
Functions allow programmers to package code into subprograms.
This is done for many reasons.

- It allows for code reuse without rewrite
- It encapsulates and isolates code
- It makes code more readable

Lets start with an example of a function

```{code-cell} ipython3
def square(x):
    product = x*x
    return product
```

## Function Definition

The code above is what is known as a function definition.
From its name, we use it to **define** functions.
It contains information on the name of the function, the arguments it accepts, and its behavior.

The first line `def square(x):` is the header of the definition.
You can find here it's name, and the arguments it accepts.
Function definition headers always start with the keyword `def`.
The name if this particular function is `square`.
This is the name that will be used later to *invoke* the function.
Enclosed in parentheses is `x`.
The parentheses contains the parameters for the function.
In this case there is one parameter, and it is `x`.

The lines after the first one (second and third line) contains the body of the function definition.
It contains the code that defines the behavior of the function when invoked.
The second line `product = x*x`.
Simply stores the value of `x*x` to the variable `product`.
The third line, `return product` defines how a function invocation of square is evaluated.
In this case the function square evaluates to the value of product

## Function Invocation/Call/Application

To use a function we simply invoke it.
Here's an example of some invocations of `square()`

```{code-cell} ipython3
square(5)
```

```{code-cell} ipython3
square(9)
```

```{code-cell} ipython3
square(3+3)
```

```{code-cell} ipython3
square(square(5))
```

A function is invoked by writing its name followed by the passed **arguments** enclosed in parentheses.
For example, `square(5)` invokes the function `square()` with the argument `5`.

With this function invocation, the argument `5` is assigned to the `square()`'s parameter `x`.
And based on this context the function body is executed.
In this case `product = x*x` assigns 25 to `product`.
And the function ends by evaluating to the value of `product` which is 25 (as defined by the line `return product`).

+++

## Functions with multiple parameters

Functions can have multiple parameters.
When invoking, the number of arguments must be equal to the number of parameters in the definition.

```{code-cell} ipython3
def isDivisible(dividend, divisor):
    remainder = dividend % divisor
    return remainder == 0

print(isDivisible(45,9))
print(isDivisible(23+2,2))
```

```{code-cell} ipython3
def fullName(fname, mname, lname):
    return fname + ' ' + mname[0] +'. ' + lname

print('Hello, ' + fullName('Rubelito', 'Reboquio', 'Abella'))
```

## Functions with no parameters

You can also write functions that have no parameters.
When invoking these kinds of functions, you should leave the parentheses blank to pass zero arguments.

```{code-cell} ipython3
def two():
    return 2

1 + two()
```

## Functions that do not have `return` statements

Functions that do not contain `return` statements (lines that start with the keyword `return`) are functions that evaluate into the special value `None`.

```{code-cell} ipython3
def add(x,y):
    z = x + y

print(add(5,3))
```

```{code-cell} ipython3
def greeter(fname,mname,lname):
    name = fullName(fname,mname,lname)
    print('Hello, ' + name)

value = greeter('Rubelito', 'Reboquio', 'Abella')
print(value)
```

In the second example above, the first line is the result of the print statement inside the function, while the second line is the result of printing the evaluation of `greeter()`

+++

## Isolation in functions

As discussed earlier functions allow us to isolate code.
This is possible because the code inside the function definition is self contained.
Variables created inside these functions cannot be accessed outside.

```{code-cell} ipython3
:tags: [raises-exception]

def isolatedFunction(x):
    y = 2
    z = 5
    print('Local values:')
    print(x)
    print(y)
    print(z)

isolatedFunction(3)
print('Global values:')
print(x)
print(y)
print(z)
```

In the case above the parameter `x` as well as the **local** variables `y` and `z` (variables defined inside the function) can only be accessed inside the function definition.
Trying to access these values outside will cause an error.

+++

In some cases local variables can even share the names of global variables.
When these ambiguous variables are accessed inside the function definition, they will be evaluated as local variables.
On the other hand, if said variables are accessed outside the function definition, they will be evaluated as global variables

```{code-cell} ipython3
w = -3
x = 0
y = -1
z = -2
def isolatedFunction2(x):
    y = 2
    z = 5
    print('Local values:')
    print(w)
    print(x)
    print(y)
    print(z)

isolatedFunction2(3)
print('Global values:')
print(w)
print(x)
print(y)
print(z)
```

## Optional parameters

Python functions can be defined with optional parameters.
A user can opt to not pass arguments associated with these parameters.
Because of these, optional parameters must come with default values.
Here's an example:

```{code-cell} ipython3
def sum(first=0, second=0, third=0):
    return first + second + third

sum()
```

```{code-cell} ipython3
sum(1,2,3)
```

```{code-cell} ipython3
sum(4,-1)
```

```{code-cell} ipython3
sum(9)
```

When invoked with less arguments, python prioritizes assigning the leftmost values.
For example, in the invocation `sum(4,-1)`, 4 is assigned to `first`, -1 is assigned to `second`.
And since there are no arguments left, `third` defaults to 0.

```{code-cell} ipython3
sum(third = 2, second = 1)
```

You can also specify which value is passed to which parameter by explicitly writing arguments like the example above.
Here, 2 is assigned to `third`, and 1 is assigned to `second`.
Since there is no explicit definition for `first`, it defaults to 0

+++

You can also mix optional parameters with non-optional parameters.
Just remember to write non-optional parameters first before writing optional parameters.

> Non-optional parameters are also known as **positional** parameters and optional parameters are also known as **key** parameters

```{code-cell} ipython3
def value(x,y,optional1 = 1, optional2 = 0):
    return (x + y - optional2) ** optional1

value(3,2)
```

```{code-cell} ipython3
value(3,2,optional2 = 2)
```

```{code-cell} ipython3
value(3,2,2,1)
```
