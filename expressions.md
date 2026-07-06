# Expressions
Expressions are the building blocks of programming. It is used to represent values. It can also be combined with other expressions to create more expressions.

+++

## Literals

Literals are the simplest forms of expressions. Just like any expression, literals represent some type of value. Literals are values that represent their value in a 'literal' sense. See the examples below. These expressions are literals

```{code-cell} ipython3
4
```

```{code-cell} ipython3
"this"
```

```{code-cell} ipython3
False
```

You can see why they represent their value in a *literal* sense. The literal `2` *literally* represents the integer value 2. The literal `this` represents the word `this`. As seen in the examples above, literals (and expressions in general) can come in the form of numbers, words, truth values, and more. We will learn about the different types of values expressions can be in the topic **Datatypes**.

+++

## Combining Expressions
Expression in python and programming are patterned after mathematical expressions. In the same way you can combine mathematical expressions, you can also combine programming expressions based on predefined rules. For example we can combine two integer literal expressions using addition and we will get a compound expression

```{code-cell} ipython3
2 + 1 - 4
```

The expression `2 + 1` is a combination of the literals `2` and `1` using addition. The expression is combined using addition through the use of the operator `+`.

As you can see when you run the cell above, it produces an output of `3`. When you run said cell, you tell python to evaluate the expression `2 + 1`. The evaluation of `2 + 1` is simply the sum `3`. 

Since `2 + 1` is also an expression, we can also combine it with other expressions through operations.

```{code-cell} ipython3
2 + 1 - 4
```

When working with multiple operations in one expression, python follows predefined rules of precedence. On operators with the same amount of priority such as `+` and `-` in the cell above, python will combine the expressions from left to right. It will evaluate the leftmost expression first. In the case above it evaluates `2 + 1` into 3 and then evaluates `3 - 4` into -1.

In other cases some operators will take priority over other operators, regardless if it is to the left or to the right.

```{code-cell} ipython3
1 + 3 * 2 
```

```{code-cell} ipython3
3 * 2 + 1
```

To promote code readability, you as a programmer can remove ambiguity by adding parentheses in your expressions. Expressions inside the **innermost** parentheses are prioritized above everything else

```{code-cell} ipython3
(1 + 3) * 2
```

```{code-cell} ipython3
4 + 2 * ((1 + 3) * 2)
```

## Variables

+++

Similar to math, another form of expression is the variable. It is called a variable because unlike literals, its value can **vary** depending on context.

To create a variable, you must assign it with a value.

```{code-cell} ipython3
x = 3
```

The cell above is known as an **asignment statement**. It is used to assign value to a variable. The variable in this case is named `x`. There are also rules on the allowed names for variables. And beyond those rules there are conventions on proper name choices.

> Note how the cell above doesnt have an output. This is because assignments statements are not an expressions that can be evaluated.

### Rules for naming variables
- Variable names must start with a letter or underscore
- Variable names must be a combination of letters, numbers, and underscores
- Variable names cannot be reserved words (words that are reserved for python syntax)

### Conventions for naming variables
- Variables must be descriptive - it should describe whatever it is representing
- Variables must be concise - it shouldnt be so long that it makes code unreadable
- And more...

If the rules are not followed, your variable name will produce an error in python. On the other hand conventions are not enforced by python. Not following conventions will still produce code that runs but it may result in code that is unreadable or hard to maintain.

The following are examples of well-named variables:

```{code-cell} ipython3
size = 10
airport_code = 'MNL'
nCols = 12
```

Variables are also expressions, so they can be used in the same way any other expressions are used. It can be combined through operations, or it can be evaluated as is.

```{code-cell} ipython3
size
```

```{code-cell} ipython3
size * 2
```

Since we assigned the value `10` to `size` in the previous cells, We can use it to represent the literal expresison `10`.

### Assignment Statements

True to its name, a variable's value can change. To do this, we simply run another assignment statement

```{code-cell} ipython3
size = 15
size
```

There are two parts to an assigment statement, the left-hand side (to the left of `=`) represents the variable name, and the right-hand side (to the right of `=`) represents the assigned expression. The left-hand side cannot be anything else other than a variable name. On the other hand you can put any expression on the right-hand side.

```{code-cell} ipython3
size = 15 + 3
size
```

```{code-cell} ipython3
size1 = 10
size2 =  20
size3 =  size1 + size2
size3
```

```{code-cell} ipython3
size = size + 3
size
```

One source of confusion when it comes to assignment statements is the misconception that it is the same as the mathematical equality. It's easy to make this misconception because after all, they use the same symbol (`=`). When you see an assignment statement, instead of an equal sympbol, imagine an arrow pointing to the left. 

```
size <- size + 3
```

Think of pushing the expression on the right-hand side into the variable in the left-hand side. The expression on the right-hand side will be evaluated, and whatever value it evaluates into, it will be pushed into the variable on the left-hand side, overwriting whatever value was originally inside. In the example `size = size + 3`, the right-hand side, evaluates into 30 + 3 or 33. The value 33 is then pushed into `size`. As a result the next time you evaluate `size` by itself, it evaluates to 33.

The cell below shows what could happen if you repeatedly overwrite `size` by adding 1 to it

```{code-cell} ipython3
size = size + 1
size = size + 1
size = size + 1
size
```

There is a special name for the assignment statement `size = size + 3` or `size = size + 1`, these are called increments/decrements. It updates the value of an **existing** variable by a certain value. There is a shortcut for increment/decrement statements, which uses the `+=` or `-=` operator.

```{code-cell} ipython3
size = 10
size += 1 # size = size + 1
size
```

```{code-cell} ipython3
size2 = 10
size2 -= 5
size2 -= 2
size2
```

```{code-cell} ipython3

```
