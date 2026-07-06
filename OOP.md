# Object-oriented Programming

As a modern programming language, python features object-oriented programming features.
While OOP is a broad and deep domain, we will be introduced to its concepts in this discussion.

One of the main philosophies of OOP is the concept of encapsulation and data hiding.
OOP achieves these concepts through classes.
Classes are able to encapsulate data and code through attributes and methods.
Let's look at an example of a class:

## Methods

Methods are functions inside class definitions.
A class' method can only be invoked with respect to the class that owns it.

```{code-cell} ipython3
class ExampleClass:
    def exampleMethod(self):
        print('this is an example method')
```

This class is called `ExampleClass`, and it contains one method called `exampleMethod()`.
In the example below we can see how `exampleMethod()` is called with respect to `ExampleClass`

```{code-cell} ipython3
inst = ExampleClass()

inst.exampleMethod()
```

The example above shows the creation of an **instance**/**object** of `ExampleClass` called `objectInstance`.
In the same way `3` is an instance of `int` and `'word'` is an instance of `str`, the variable `inst` is an instance of `ExamnpleClass()`.

> Creating an instance of a class is also known as instantiation

With an instance of `ExampleClass()` we can invoke its method `exampleMethod()` using dot notation: `inst.exampleMethod()`.

In the definition of `exampleMethod()` note that we pass a parameter called `self`, but we don't pass an argument during invocation.
In an instance's method, the first parameter defined (in this case `self`) is a reference to the instance itself.
When invoking said method, the instance is passed by default through dot reference, so we don't pass it as an argument.
You'll see a clearer example of this later.

+++

## Attributes

Attributes are variables associated to a class.
We use attributes to encapsulate and hide data within classes.
To create attributes associated to an object instance, we must define a special python methods called `__init__()`.

```{code-cell} ipython3
class ExampleClass2:
    def __init__(self):
        self.attr1 = 6
        self.attr2 = 'word'
        localVar = 5
        
    def exampleMethod(self):
        print('this is an example method')
```

In the example above we create two attributes inside `ExampleClass2`: `attr1`, and `attr2`.
An attribute is created by creating an assignment associated to the object instance `self`.
This is also done using dot notation (e.g.
`self.attr = 6`)

```{code-cell} ipython3
inst2 = ExampleClass2()

print(inst2.attr1)
print(inst2.attr2)
```

Note that even though `localVar` is created inside the `__init__()` function, it will not be associated to the instance/class.
This is because we did not use the dot notation to create the assignment.
A variable such as this will only be a local variable of the `__init_()` function (usable only within the definition of `__init__()`)

```{code-cell} ipython3
:tags: [raises-exception]

print(inst2.localVar)
```

When you create an instance of a class (e.g.
`inst2.ExampleClass2()`) you are actually calling the `__init__()` function associated to that class.
The `__init__()` function is called to initialize/prepare the attributes of the instance.
The `__init__()` function can also be defined with parameters.
This allows us to create unique instances of a class.

```{code-cell} ipython3
class Fraction:
    def __init__(self, num, denom):
        self.numerator = num
        self.denominator = denom

    def product(self,frac):
        sum = Fraction(self.numerator * frac.numerator, self.denominator * frac.denominator)
        return sum
```

```{code-cell} ipython3
frac1 = Fraction(1,2)
frac2 = Fraction(3,4)

print(str(frac1.numerator) + '/' + str(frac1.denominator))
print(str(frac2.numerator) + '/' + str(frac2.denominator))

frac3 =  frac1.product(frac2)

print(str(frac3.numerator) + '/' + str(frac3.denominator))
```

In the example above we can see how we have two instances of fraction (`frac1` and `frac2`).
These instances have their own associated attributes called `numerator` and `denominator`.

+++

Just like any variable an attribute can be modified through reassignment

```{code-cell} ipython3
frac1.numerator = 2

print(str(frac1.numerator) + '/' + str(frac1.denominator))
```

## Inheritance

One important OOP concept is inheritance.
Inheritance allows us to build classes from existing classes.
A new class that is created through inheritance will **inherit** attributes and methods from another class.

```{code-cell} ipython3
class Class1:
    def __init__(self, param1):
        self.attr1 = param1

    def method1(self):
        print('I am an  instance of Class1 with the attribute' + str(self.attr1))

class Class2(Class1):
    def method2(self):
        print('this is a specialized a method')
```

```{code-cell} ipython3
c2 = Class2(3)
c2.method1()
c2.method2()
```

In the example above `Class2` is defined to inherit from `Class1` through the syntax (`class Class2(Class1):`).
Even though `Class2` doesn't contain definitions of `method1()` and `__init__()`, we can still use said methods since they are automatically inherited by `Class2`.
As you can see in this example inheritance helps us reduce code duplication.
We don't have to rewrite the inherited methods, we simply define an inheritance relationship.
This also helps with maintainability since we only have one copy `method1()`.


We can also inherit from multiple classes that inherit from other classes.
Creating a hierarchical structure of class relationships:

```{code-cell} ipython3
class Class3(Class2):
    def method3(self):
        print('this is an even more specialized method')
```

```{code-cell} ipython3
c3 = Class3(3)
c3.method1()
c3.method2()
c3.method3()
```

## Method overriding

Sometimes an inheriting class (child) might need to modify an inherited (parent) method.
To do this we simply redefine the inherited method with the same name.
When said modified method is called it will invoke the child class' version of the method instead.
In such scenario, the parent method is **overridden** by the child method.

```{code-cell} ipython3
class Class4(Class2):
    def method2(self):
        print('this specialized a method is OVERRIDDEN')
```

```{code-cell} ipython3
c4 = Class4(3)
c4.method1()
c4.method2()
```

```{code-cell} ipython3

```
