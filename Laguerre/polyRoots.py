# module polyRoots
''' roots = polyRoots(a).
    Uses Laguerre's method to compute all the roots of
    a[0] x^n + a[1] x^(n-1) + ... + a[n-1] x + a[n] = 0.
    The roots are returned in the array 'roots'.
'''
import numpy as np
import cmath
from random import random


def polyRoots(a, tol=1.0e-12):

    def laguerre(a, tol):
        # Starting value (random number)
        x = random()
        n = len(a) - 1
        for i in range(30):
            p = np.polyval(a, x)
            dp = np.polyval(np.polyder(a, 1), x)
            ddp = np.polyval(np.polyder(a, 2), x)
            if abs(p) < tol:
                return x
            g = dp / p
            h = g * g - ddp / p
            f = cmath.sqrt((n - 1) * (n * h - g * g))
            if abs(g + f) > abs(g - f):
                dx = n / (g + f)
            else:
                dx = n / (g - f)
            x = x - dx
            if abs(dx) < tol:
                return x
        print('Too many iterations...')

    def deflPoly(a, root):  # Deflates a polynomial
        n = len(a) - 1
        b = [(0.0 + 0.0j)] * n
        # The leading coefficient still unchanged:
        b[0] = a[0]
        for i in range(1, n):
            b[i] = a[i] + root * b[i - 1]
        return b

    n = len(a) - 1
    roots = np.zeros((n), dtype=complex)
    for i in range(n):
        x = laguerre(a, tol)
        if abs(x.imag) < tol:
            x = x.real
        roots[i] = x
        a = deflPoly(a, x)
    return roots
