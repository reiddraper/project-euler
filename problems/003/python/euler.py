#!/usr/bin/env python

import math

def evenly_divisible(a, b):
    return a % b == 0

def is_prime(num):
    if num in (2, 3): return True
    for x in xrange(2, int(math.ceil(math.sqrt(num)))):
        if evenly_divisible(num, x):
            return False
    return True

def yield_primes():
    yield 2
    x = 3
    yield x
    while True:
        if is_prime(x):
            yield x
        x = x + 2

def prime_factors(num):
    max_factor = int(math.floor(math.sqrt(num)))
    for x in yield_primes():
        if x > max_factor:
            break

        if num % x == 0:
            yield x

        

if __name__ == '__main__':
    print max(prime_factors(600851475143))
