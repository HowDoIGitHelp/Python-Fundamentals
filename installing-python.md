# Installing Python

## Anaconda python

Installing anaconda python comes with with useful resources. The anaconda install comes with python 3, jupyter, conda environment and more:
You can download anaconda through the [anaconda download page](https://www.anaconda.com/download/success).

Choose the correct installer for your operating system

![anaconda_download page.png](images/anaconda_download_page.png)

Install the anaconda using the installer. To avoid issues try to choose an installation path that does not contain any spaces. The installer will warn you about this. 

You can just follow the default installation choices from here.

![anaconda_installation.png](images/anaconda_installation.png)

If successfully installed, the installer will install the following tools to your computer:
- Python
- Anaconda Prompt
- Anaconda Navigator
- Jupyter Notebook
- Jupyter Lab
- Spyder IDE

To verify your python installation you can run anaconda prompt. It will open the anaconda terminal. From the terminal you can use anaconda's command line tools.

Type the command `python` and press enter:

![python_command.png](images/python_command.png)

If everything is good, anaconda prompt should send you to the python interpreter

![python_interpreter.png](images/python_interpreter.png)

You can now use the anaconda terminal to run python scripts

## Adding python to your PATH variable

If you want to use python in your own terminal, you can add the python executable in your PATH variable. 
The way to do this will depend on your operating system. 
Check the guides below for updating the value of PATH:
- [Windows](https://www.computerhope.com/issues/ch000549.htm)
- [Mac/Linux](https://mac.install.guide/terminal/path)

If you're successful in adding python to yout PATH variable, you should be able to run the `python` command in your terminal of choice

> If you already have a python installation in your machine, this is not advised.
> 
> For newer version of windows, running the `python` command may redirect you to the Microsoft Store Download Page for python. To change this, find the setting "App execution aliases" and toggle off the option for App Installer-python.exe and App Installer-python3.exe

## Python Standalone

If you do not want to install the anaconda tool stack. You can also opt to install the python by itself.
You can follow the instructions on [python's download page](https://www.python.org/downloads/)

If you do choose to install python by itself you will also need to manually install jupyter, which will be used in this training course. You can select between jupyter lab and jupyter notebook, or even install it as a plugin in VSCode. You can find installation instructions in the [jupyter page](https://jupyter.org/install)

```{code-cell} ipython3

```
