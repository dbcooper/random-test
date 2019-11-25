#!/usr/bin/env bash

# XXX  Seeding and re-seeding at the ½-way mark didn't help

# Seed w/ PID
RANDOM=$$

N=1000000
while [ $N -gt 0 ]
do
    R=$((RANDOM % 10800))
    BIN=$((R / 100))
    echo $BIN
    N=$((N-1))
done
