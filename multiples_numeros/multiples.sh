#!/bin/bash

I=1
FINAL=100
QUANTS=0
while [[ I -le FINAL ]]
do
    if [[ $(( I % 2 )) -eq 0 ]]
    then
        QUANTS=$((QUANTS+1))
    fi
    I=$((I+1))
done
echo "Hi a $QUANTS multiples de 2"