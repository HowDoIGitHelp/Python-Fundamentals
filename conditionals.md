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

# Conditionals

To enable our program to adapt and be more useful, we have to make use of control flow statements and conditionals.

In a flowchart, conditionals are blocks that allow the execution to split off into another branch depending on certain values.
This allows a flowchart to be more useful and be applicable to a variety of scenarios.

In the same way, we want our program to be useful and applicable to a variety of scenarios as well.

In Python, we have a few statements related to conditionals: `if`, `else`, and `elif`.

## `if`

The `if` statement is a conditional that defines that a block of code is to be executed if the condition is true; otherwise, it is skipped.

```{code-cell} ipython3
if True:
    print("Hey, it's true!")
    print("more statements")
print("outside")
print("inside or outside")
if False:
    print("This is false, it won't print.")
print("outside2")
```

Note that the indentation here is important.
It determines whether the code falls under the `if` statement or not.

```{code-cell} ipython3
if False:
    print("Not printing")
print("I'm outside of the if so I get printed")
```

As with much of programming, we can compound the condition and nest it:

```{code-cell} ipython3
if True:
    print("This is printing") #yes
    if False:
        print("But not this") #no
if False:
    print("None of this either") #no
    if True:
        print("Nor this") #no
```

Of course, we wouldn't be checking if `True` is true or `False` is false in a real program.
Most likely, we'd have a variable or a condition instead of a literal.

> Notice the indentation of the last two lines of code, the last two lines are all inside the `if False` block. To indicate this we add one more level of indentation to every line in the block

```{code-cell} ipython3
num = 10
if num > 60:
    print("High")
if num <= 60:
    print("Low")
```

Depending on the value of `num` provided, we'd get an output of `High` or `Low`.

The expression `num > 60` either evaluates to `True`, which will tell Python to proceed with the clause under the first `if` statement, or `num <= 60` is true, telling Python to print `Low`.

This either-or pattern is common enough that we have a construct for that.

## `else`

The `if` statement may have an optional `else` statement after it, implementing the either-or pattern.

In an `if-else` statement, only one block of the two is executed.

```{code-cell} ipython3
if True:
    print("Only this")
else:
    print("and not this")
```

```{code-cell} ipython3
num = 50
if num > 60:
    print("High")
else:
    print("Low")
```

> Using `else` without an `if` is a syntax error.

Creating `if-else` blocks, allows us to split the program into two branches. If we are looking for more than two we can compound `if-else` statements inside other `if` or `else` statements.

```{code-cell} ipython3
num = 55
if num > 60:
    print("High")
else:
    if num <=60 and num > 40:
        print("Medium")
    else:
        print("Low")
```

In the code above, the program can go in either three branches, if the inputted number is greater than 60, it goes to the first branch and prints "High", if the inputted number is 60 or lesser but greater than 40, it goes to the 2nd branch. If it is not greater than 60, or if it is not between 40 and 60, it goes to the third branch. The third branch in this case is the `else` branch of the `else` branch.

> Notice the indentation of the last four lines of code, the last four lines are all inside the `else` block. To indicate this we add one more level of indentation to the every line in the block

You can write write three branches neatly using the `elif` block. `elif` is short for `else-if` and it acts like a combination of an `else` block and an `if` block. Using the `elif` block we can write a more readable program equivalent to the previous program.

```{code-cell} ipython3
num = 30
if num > 60:
    print("High")
elif num <=60 and num > 40:
    print("Medium")
elif num <= 40 and num > 20:
    print("Medium Low")
else:
    print("Low")
```
