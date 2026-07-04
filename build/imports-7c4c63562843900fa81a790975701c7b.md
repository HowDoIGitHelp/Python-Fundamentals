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

# Importing python libraries

Python does not include the entirety of its massive library of pre-made functions when running programs.
If a user wants to use these functions.
The user must explicitly import said functions/libraries

## Importing an entire library

To import an entire library simply use the `import` keyword

```{code-cell} ipython3
import math
```

With the `math` library now imported you can freely use functions inside the math library using dot notation.
For example, the ceiling function `ceil()` and the GCD function `gcd()`

> Functions and classes inside `math` must be referenced using dot notation

```{code-cell} ipython3
math.ceil(4)
```

```{code-cell} ipython3
math.gcd(10,5,15,20,100)
```

## Adding aliases to imports

Some library names can be very long.
For these cases it would be useful to add an alias to shorten their names.
For example, we can give the `math` library the alias `m`

```{code-cell} ipython3
import math as m
m.ceil(4)
```

## Importing a class or function from a library

Sometimes you might only need one function or class from a library, to specify the specific function or class, use the `from-import` statement.
In the example below we import the `date` class from the `datetime` library

```{code-cell} ipython3
from datetime import date
```

```{code-cell} ipython3
d1 = date(2024,1,1)
```

You can also import multiple classes and functions from a library.
Below we import the `datetime` class and `timedelta` class in one line

```{code-cell} ipython3
from datetime import datetime,timedelta
```

```{code-cell} ipython3
dt1 = datetime(2024,1,1,3,0,0)
dt2 = datetime(2024,2,12,4,0,0)

diff = dt2 - dt1
print(diff.days)
print(diff.seconds)
```

## Importing your own code

Any `.py` file can be treated as a library.
If you want to import functions written on a different file, you can use `import` statements to import either the entire library or select functions.
For example, if your library's filename is `mylib.py`:

```{code-cell} ipython3
import mylib

mylib.function1()
```

You can also place your library in a folder and import it using dot notation.
In the example below.
We have a library called `mylib2.py` which is inside the folder `myDir`

```{code-cell} ipython3
from myDir.mylib2 import function2

function2()
```

> When importing your own code, make sure your library or your folder is in the same directory as your jupyter notebook / python program
