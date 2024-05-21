#!/bin/bash

ARRIBAR=${1}
NUMERO=1
TOTAL=0
while [[ NUMERO -le ARRIBAR ]]
do
    TOTAL=$((TOTAL+$NUMERO))
    NUMERO=$((NUMERO+1))
    
done

echo "el sumatori de $ARRIBAR val $TOTAL"



