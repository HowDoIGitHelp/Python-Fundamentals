#!/usr/bin/bash

jupytext --sync *.ipynb *.md
jupyter nbconvert --to notebook --execute --inplace *.ipynb
export BASE_URL="/Python-Fundamentals"
jupyter book build --html --strict
