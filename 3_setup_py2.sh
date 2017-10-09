#!/usr/bin/env bash

brew install python2

# scipy stack
pip2 install numpy
pip2 install scipy
pip2 install matplotlib
pip2 install ipython
pip2 install pandas
pip2 install sympy
pip2 install nose # throws error ... Permission denied: '/usr/local/man'

pip2 install jupyter

pip2 install cookiecutter
pip2 install tox

pip2 install holidays
