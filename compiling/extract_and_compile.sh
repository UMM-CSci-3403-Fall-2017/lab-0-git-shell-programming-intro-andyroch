#!/usr/bin/bash

tar -xf NthPrime.tgz -C $2 #Extract tar file and then place the extracted file into the command line argument directory
cd $2/NthPrime #Open the NthPrime directory

gcc -o NthPrime main.c nth_prime.c #Execute main.c and nth_prime.c in NthPrime
./NthPrime $1 #Provide the command line argument for NthPrime

