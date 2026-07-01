# Small Python Programs

Create separate `.py` files for each item below. The filename should be the name of the python program (e.g. greeter.py, adder.py, greeterplus.py)

To test your programs, run each file using the `python` command in the terminal (or anaconda prompt). For example:

```shell
python greeter.py
```

## Easy (requires expressions and datatypes)

### 1 Greeter

- Create a program that asks the user for a name, and the program prints "Hello, {name}"

### 2 Adder

- Create a program that asks the user for two integers (you will have to call `input()` twice). The program prints the sum of the values

### 3 Converter

- Create a program that asks the user for a float. The program prints the conversion of the number to Fahrenheit

### 4 Mean Calculator

- Create a program that asks the user for three floats. The program prints the arithmetic mean of the numbers

### 5 Repeater

- Create a program that asks a user for a string and an integer. The program prints the string repeated n-times (where $n$ is the number inputted by the user).
- Example: 
  - **inputs:** `ha`, `5`
  - **output**: `hahahahaha`

## Medium (requires conditionals)

### 1 Greeter+

- Create a program that asks the user for a name. 
  - If the number of characters in the name of the person is less than 7, the program prints "Hello, {name}". 
  - Otherwise it prints "Hi, {name}"

### 2 Adder+

- Create a program that asks the user for two integers (you will have to call `input()` twice). 
  - If the value of their sum is zero, the program prints the string "Zero". 
  - Otherwise it prints the sum in integer form.

### 3 Converter+

- Create a program that asks the user for a float. The program prints the conversion of the number to Fahrenheit. 
  - If the value is below the freezing point of water, the program prints "{fahrenheit} degrees Fahrenheit cold".
  - If the value is above the boiling point of water, the program prints "{fahrenheit} degrees Fahrenheit hot"
  - Otherwise the program prints "{fahrenheit} degrees Fahrenheit"

### 4 Mean Calculator+

- Create a program that asks the user for three floats.
  - If the mean is negative, print "Negative mean" 
  - If the mean is positive, print "Positive mean"
  - If the mean is zero, print "Zero mean"

### 5 Repeater+

- Create a program that asks a user for a string and an integer. The program prints the string repeated $n$-times (where $n$ is the number inputted by the user). 
  - If the number of characters in the repeated string is greater than 20, the prints "Too long, cannot print" instead
- Example 1: 
  - **inputs:** `ha`, `5`
  - **output**: `hahahahaha`
- Example 2:
  - **inputs**: `ha`, `12`
  - **output**: `Too long, cannot print`

## Advanced (requires Sequence types, Loops)

### 1 Greeter++

- Create a program that asks the user for $n$ names. After collecting $n$ names, print the following for every inputted name:
  - If the number of characters in the name of the person is less than 7, the program prints "Hello, {name}". 
  - Otherwise it prints "Hi, {name}"

### 2 Adder++

- Create a program that asks the user $n$ integers. 
  - If the value of their sum is zero, the program prints the string "Zero". 
  - Otherwise it prints the sum in integer form.

### 3 Mean Calculator++

- Create a program that asks the user for $n$ floats. 
  - If the mean is negative, print "Negative mean" 
  - If the mean is positive, print "Positive mean"
  - If the mean is zero, print "Zero mean"