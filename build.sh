#!/usr/bin/bash

rm *-outputs.ipynb
jupytext --to ipynb *.md
for f in *.ipynb; do
    mv "$f" "${f%.ipynb}-outputs.ipynb"
done
jupyter nbconvert --to notebook --execute --inplace *.ipynb
export BASE_URL="/Python-Fundamentals"
jupyter book build --html --strict
