#/usr/bin/bash

mkdir -p problems/$1/haskell
mkdir -p problems/$1/python

cp templates/haskell/euler.hs problems/$1/haskell
cp templates/python/euler.py problems/$1/python
