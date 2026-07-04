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

# Loops

Imperative programs, such as python programs are built by combining code into three ways: chains, branches/selection, and loops/repetition.
Chains are pretty simple.
We've seen a few examples of it.
It is simply executing lines of code one after the other.
The example below is a chain of three lines of code:

```{code-cell} ipython3
x = 3
y = 7
print(x+y)
```

Branching/selection is also something we have discussed.
We combine statements into branches using `if-else` and `if-elif` conditionals.
The example below are two branches of code:

```{code-cell} ipython3
password = 'pword'

if len(password) < 7:
    print('password too weak')
else:
    print('password accepted')
```

The third way of combining code is through loops/repetition.
The name is self-explanatory.
Repetition allows us to repeatedly run lines of code.

See the example below.

```{code-cell} ipython3
i = 0
while i < 5:
    print('again')
    i = i + 1
print('finish')
```

The code above repeatedly runs the last two lines 5 times.

Let's dissect the code line by line to understand how it works.

The first line `i=0`, is simply an assignment statement that **initializes** the value of `i` to `0`.

The second line is known as a while statement.
It is written similar to `if` and `elif` statements.
It is the `while` keyword followed by boolean expression (any expression that evaluates into a boolean type value).
The boolean expression inside this `while` statements is `i<3`.
Like the `if`, `else`, and `elif` statements, we end the `while` statement with a `:` (colon)

The third line is a print statement, simply printing the string literal `again`.
The fourth line is another assignment statement.
This statement reassigns the value of `i` to `i+1` (an increment statement, review assignment statements in the Expressions chapter).
Notice how the third and fourth lines are indented.
Again, indentation here is important.
Changing the indentation will change the meaning of the program.

The fifth line is another print statement, this time without indentation.
This line prints the string literal `'finish'`.

## How python interprets the code

Let's take a step by step discussion on how python interprets the cell above:

- Starting from line 1, python assigns the variable `i` with `0`.
- **On the second line, python checks if the boolean expression inside the while statement is true.
In this case "Is `i < 3`"? Yes it is.
Since `0` is less than 5, it proceeds to the indented lines.**
    - It executes the third line, printing the string `'again'`.
    - It executes the fourth line, overwriting the value of `i` to `i+1`.
Since `i` is zero before this line, the increment, will change the value of `i` to `0+1` or simply `1`.
- **Instead of proceeding to the fifth line, python goes back to the while statement, and checks again, "Is `i < 3`?" Since `1` (the current value of `i`) is still less than `3`.
The check is successful and it proceeds to the indented lines again**
    - It executes the third line, printing the string `'again'`.
    - It executes the fourth line, overwriting the value of `i` to `i+1`.
Since `i` is 1 before this line, the increment, will change the value to `i` of `1+1` or simply `2`.
- **python goes back to the while statement, and checks again, "Is `i < 3`"? Since `2` (the current value of `i`) is still less than `3`.
The check is successful and it proceeds to the indented lines again**
    - It executes the third line, printing the string `'again'`.
    - It executes the fourth line, overwriting the value of `i` to `i+1`.
Since `i` is 1 before this line, the increment, will change the value to `i` of `2+1` or simply `3`.
- **python goes back to the while statement, and checks again, "Is `i < 3`?" Since `3` (the current value of `i`) is not less than `3`.
The check fails.
It skips the indented lines and proceeds to the fifth line**
- It executes the fifth line and prints `'finish'`

As you can see, the indented lines after the `while` statement are repeated *while* the boolean expression remains true.

Let's look at some more examples:

```{code-cell} ipython3
print('countdown...')
i = 5
while i >= 0:
    print(str(i) + '...')
    i = i - 1
print('lift off!')
```

As expected, the indented lines right after the `while` statement are repeated until the boolean expression `i >= 0` evaluates to `False`.
In this case value of `i` starts as 5 and during every repetition, it is reduced/decremented by 1.
Until it becomes `-1` which causes the boolean expression, `i >= 0` to fail (i.e.
evaluates to `False`).

In this example we are repeatedly printing the concatenation of `str(i)` (variable `i` coerced as an `int`), and `'...'`.
Because of this print statement we are seeing how the value of `i` changes across every repetition.

+++

## Lists and loops

```{code-cell} ipython3
fruits = ['Apple','Banana','Cherry','Durian','Eggplant','Fig']
i = 0
string_of_fruits = ''
while i < len(fruits):
    string_of_fruits = string_of_fruits + fruits[i] + ', '
    i = i + 1

print('Here are the items: ' + string_of_fruits)
```

Here is a more complex example.
We have a list containing strings called `fruits`.
And we have `i` which starts as 0, and `string_of_fruits` which starts as `''` (an empty string, a string with no contents).

Our while loop has the boolean expression `i < len(fruits)`.
This expression basically checks if the variable `i` is less than the length of the list `fruits`.

The statements that get repeated are lines 5 and 6.
Line 5 reassigns the variable `string_of_fruits` with the concatenation `string_of_fruits + fruits[i] + ', '`.
This expression concatenates the current value of `string_of_fruits` and `fruits[i]`, which is the element of `fruits` at position `i`.

To see this clearer, let's print the value of `string_of_fruits` at every repetition of the loop.
I have added comments to show the print statements I have added.

```{code-cell} ipython3
fruits = ['Apple','Banana','Cherry','Durian']
i = 0
string_of_fruits = ''
print(string_of_fruits) #value of string_of_fruits before the while loop begins
while i < len(fruits):
    string_of_fruits = string_of_fruits + fruits[i] + ', '
    print(string_of_fruits) #value of string_of_fruits during every repetition (after reassignment)
    i = i + 1

print('Here are the items: ' + string_of_fruits)
```

As expected, before the loop `string_of_fruits` is an empty string.
You can see this as the blank line at the start of the output.
On the first repetition `string_of_fruits` gets updated by concatenating it with the `fruits[0]` or the first element of the list `fruit`.
On the second repetition, `string_of_fruits` gets updated again by concatenating it with `fruits[1]`, or the second element of the `fruits`.
And so on, until the boolean expression `i < len(fruits)` fails and the while loop stops.

+++

## Branches inside loops

```{code-cell} ipython3
values = [2,7,3,2,6,6]

i = 0
while i < len(values):
    if values[i] > 3:
        print(values[i])
    i = i + 1
```

In the example above we can see how we can put branches inside our while loops.
Here we have a `while` loop that starts with `i` as `0`.
It checks if `i < len(values)`: While this is true it repeats the following:
It checks if the element at position `i` is greater than 3.
If it is, it prints the element.
It then increments `i` by one.

+++

## Loops inside loops

We can also put loops inside loops, these are know as nested loops

```{code-cell} ipython3
i = 0
while i < 4:
    j = 0
    while j < 3:
        print('i=' + str(i) + ', ' + 'j=' + str(j))
        j = j + 1
    print()
    i = i + 1
```

The example above shows the values of `i` and `j` during every repetition.
Looking at this example closely we can see how the inner loop:

```python
...
j=0
...
j=1
...
j=2
```

Is repeated 4 times (i.e.
the number of repetitions as specified by the outer loop)

+++

Nested loops allow us to create interesting loop patterns.
Such as the nested loop below which increases the number of repetitions of the inner loop

```{code-cell} ipython3
i = 0
while i < 4:
    j = 0
    while j < i: # instead of looping a set amount of times, it loops based on the value of i
        print('i=' + str(i) + ', ' + 'j=' + str(j))
        j = j + 1
    print() # prints an empty line
    i = i + 1
```

In the example above we simply change the boolean expression inside the inner loop from `j < 3` to `j < i`.
With this change, the inner loops number of repetitions become dependent on the value of `i`.
In this case `i` is incremented by 1 during every repetition of the outer loop.
Because of this, the inner loop's repetition amount is also incremented by 1.

```{code-cell} ipython3
while False:
    print('again')
```

## Infinite loops

One thing you need to be careful of when it comes to loops is accidentally creating an infinite loop.
An infinite loop occurs when the loop has no way of ending.

```python
while True:
    print('again')
```

If we try to run the code above, we repeat the second line again and again.
But since the boolean expression is always True, the loop will never end.
If your try to run this code.
You'll see that python will execute the indented line again and again until it cannot anymore.

The example above is very obvious.
In some cases you might not notice that you accidentally created an infinite loop

```python
int i = 0
while i < 5:
    print('again')
```

The example above will also produce an infinite loop.
As you can see you missed the line that reassigns the value of `i`.
And since the value of `i` doesn't change.
Python will keep evaluating `0 < 5`, which is always true, resulting in boolean expression that cannot fail, and therefore an infinite loop.

```python
int i = 0
while i < 5:
    print('again')
    i = i - 1
```

The example above does change the value of `i` but because you are decrementing `i`.
No matter how many times your decrease `i` it will not result in the failure of the boolean expression `i < 5`.
Therefore, the boolean expression is always true, causing an infinite loop

```python
int i = 0
while i < 5:
    print('again')
i = i + 1
```

In the example above we have the correct modification for `i`, which is increment.
But unfortunately we did not put the correct indentation on this line.
This means that the `i = i + 1` is placed outside of the loop.
Which means this line will never be reached until the loop is finished.
And since the loop above is missing the correct increment, it will never finish.

+++

## `for` loops

Python features special repetition statements that are useful for working with sequence datatypes.
These are known as `for` loops

```{code-cell} ipython3
fruits = ['Apple','Banana','Cherry','Durian']

for f in fruits:
    print(f)
```

A `for` loop goes through the elements of a sequence (lists, tuples, strings, dictionaries, etc.) to allow us to interact with the elements individually.

In the code above, we write `for f in fruits:`.
A good way to read this line in English is *"for every `f` in fruits"*.


On the first repetition of the for loop, the first element of `fruits` is assigned to the variable `f`.
It then proceeds to the indented lines.
In this case we have one line which simply prints the value stored in `f` which is `'Apple'`.
It then returns to the start of the loop, but this time reassigning `f` to the second element of `fruits`.
It then proceeds to the indented lines again and prints the value store in `f`.
This time the stored value is `Banana`.

The for loop repeats this process until there are no more elements in `fruits`.

The `for` loop above has the same results as the `while` loop below:

```{code-cell} ipython3
fruits = ['Apple','Banana','Cherry','Durian']

i = 0
while i < len(fruits):
    f = fruits[i]
    print(f)
    i = i + 1
```

As said before, `for` loops will work with other python sequence:

```{code-cell} ipython3
for element in 1,2,3,4:
    print(element)
```

```{code-cell} ipython3
for character in 'word':
    print(character)
```

```{code-cell} ipython3
items = {'a':1,'b':2,'c':3}
for key in items:
    print(key, items[key])
```

> As you can see in the code above, `key` is assigned to the keys of the entries instead of the values
