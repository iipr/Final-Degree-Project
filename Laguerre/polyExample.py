#!/usr/bin/python

from polyRoots import *
import numpy as np

# Example 1: x^4 - 5x^3 - 9x^2 + 155x - 250
c = np.array([1.0, -5.0, -9.0, 155.0, -250.0])
rootList = polyRoots(c)
print('x^4 - 5x^3 - 9x^2 + 155x - 250\nRoots are:\n')
print '[%s]' % ',\n '.join(map(str, rootList)), '\n'


# Example 2: x^7 + 2x^4 + x^3 + x
c = np.array([1, 0, 0, 2, 1, 0, 1, 0])
rootList = polyRoots(c)
print('x^7 + 2x^4 + x^3 + x\nRoots are:\n')
print '[%s]' % ',\n '.join(map(str, rootList)), '\n'

# Example 3: Delta(x, 0.28^2) = 0.0784*x^6 - x^4 - 1.8432*x^3 - 0.9216*x^2 + 0.0784
c = np.array([0.0784, 0, -1.0, - 1.8432, - 0.9216, 0, 0.0784])
rootList = polyRoots(c)
print('Delta(x, 0.28^2)\nRoots are:\n')
print '[%s]' % ',\n '.join(map(str, rootList)), '\n'
