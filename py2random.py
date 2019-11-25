#!/usr/bin/python

# Use Python 2 b/c cronjob calls it

import random

tally = {}
n=1000000
while (n):
    x = random.random()
    r = x*10800                         # sleep seconds calculation
    b = int(r/100)                      # bin
    if b in tally:
        tally[b] += 1
    else:
        tally[b] = 1
    n -= 1

for k in range( max(tally.keys())+1 ):  # all bins [0,108?)
    if k in tally:
        print("%d,%d" % (k, tally[k]))
    else:
        print("%d,0" % k)
