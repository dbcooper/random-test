#!/usr/bin/env bash

PYTHON=`mktemp --suffix=-python.csv`
BASH=`mktemp --suffix=-bash.csv`
OUTPUT='combined.csv'

echo -n "Generating Bash random values..."
./randy.sh | ./bin_it.pl >$BASH
echo " Done"
echo -n "Generating Python random values..."
./py2random.py >$PYTHON
echo " Done"
echo "Combining..."
echo "Bin,Python,Bash" >$OUTPUT
join -t , $PYTHON $BASH >>$OUTPUT
