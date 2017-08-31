#!/bin/bash

tar -xvzf NthPrime.tgz -C $2

cd $2/NthPrime

gcc -o NthPrime main.c nth_prime.c

./NthPrime $1
