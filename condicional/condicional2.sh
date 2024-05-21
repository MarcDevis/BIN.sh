#!/bin/bash
read -p "introdueix un número " NUMERO
if [[ ${NUMERO} -eq 5 ]]
then
    echo "has introduit el numero 5 "
elif [[ ${NUMERO} -lt 5 ]]
then
    echo "has introduit un numero menor que 5 "
elif [[ ${NUMERO} -gt 5 ]]
then
    echo "has introduit un numero major que 5 "
fi