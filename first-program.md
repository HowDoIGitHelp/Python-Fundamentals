# First program

The interpreter is handy for when we want to have Python calculate a few simple expressions, but it can get hard to use when we want to build programs out of it.

A Python program is simply a file containing Python expressions and instructions, which Python will execute.
The program can be as simple as one print statement:

```{code-cell} ipython3
print("Hello world!")
```

```{code-cell} ipython3
subject = "Sam"
verb = "eats"
object = "the apple"

print(subject + " " + verb + " " + object + ".")
```

The function `print()` allows us to write string expressions in the output. This is commonly called as *printing*. In the case of jupyter, the string expression will be printed in the output section of the cell. On the case of python programs, the string expression will be printed in the terminal. To demonstrate this let's create our first python program

+++

## Writing your first program

To start writing our Python program, we'll have to open up a new file in a text editor.

Use any text editor (e.g. VS Code, Sublime Text, etc.) or Python IDE (e.g. PyCharm) that you're comfortable with.
And while it's completely not necessary for Python to have a full-fledged IDE, it can be quite a help.

Python is very strict with whitespaces and indentation as these are used to delineate sections of our program.
In fact, random indentations in the source code is an error.
As such, if you can, set your text editor to interpret pressing the `<Tab>` key as inserting 4 spaces instead of an actual `<Tab>` character. 
We don't want to accidentally mix in `<Tab>`s and `<Space>`s in our source file later on.

Now, write our little program. 

```python
print("Hello world!")
```
![python_program.png](images/python_program.png)

> For this to run correctly, make sure you run the command at the same directory as `hello.py`

Save the file with the file extension `.py`.
The `.py` indicates that the file is a Python program.
In this case, let's save it as `hello.py`.

## Running our program

To run our program, we'll use `python` directly via a terminal (if you installed python through anaconda, you can use the anaconda prompt as your terminal). Make sure you run the command on the same directory the file `hello.py` is in. If python is installed correctly and if there are no errors in your program, you should see the following output:

```shell
$ python hello.py
Hello world!
```

![python_program_output.png](images/python_program_output.png)

Python will execute the file one line at a time.
When no more lines are left to execute, the Python program finishes and stops.

## Asking for user input

To make our program more useful, we want it to accept user input.
Instead of computing the same numbers over and over again, or having to edit the source code, we can ask for user input with `input()`.

```python
print("What's your name?")
name = input()

print("Hello, " + name)
```

```none
What's your name?
Sam
Hello, Sam
```

`input()` will always try to evaluate user input into a `str` literal, so we'll have to first coerce it to the appropriate datatype. Without the coercion you will encounter a type error due to type incompatibility. Remember this as it's an easy error to miss.

```python
num = input()
print(num + 10)
```

```none
Traceback (most recent call last):
  File "/home/user/program.py", line 2, in <module>
    print(num + 10)
          ~~~~^~~~
TypeError: can only concatenate str (not "int") to str
```

In this case we are trying to add two numbers. So we coerce, `num` into an integer first.

```python
num = input()
num = int(num)
print(num + 10)
```

```none
25
35
```

Here's another variant of this error:

```python
print("Enter a number")
num = input()
print(num * 5)
```

```none
Enter a number
25
2525252525
```

Python will not crash from this because the `*` operation is type compatible in this context. In this case it will be interpreted as a string replication, repeating `num` 5 times.

## Writing comments

It is a good idea to write comments in your source code.
This serves as notes for the programmer (you, or other people) in the future.

We can write comments using the `#` character.
Every character after `#` is considered a comment.

```python
# This is a comment.
```

Comments are ignored by Python when executing and they can even appear after Python expressions.

```{code-cell} ipython3
num = 1 + 1 # add 1 and 1 together
```
