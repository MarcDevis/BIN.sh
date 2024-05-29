#!/bin/bash

if [[ ${#} -ne 1 ]]
then
    echo "has d'introduir un paràmetre"
    exit 1
fi

# recollir parametre i guardar a variables quants

QUANTS=${1}

URL=https://www.random.org/integers/?num=${QUANTS}&min=1&max=100&col=1&base=10&format=plain&rnd=new


# EJECUTAR URL
NUMEROS=$(curl ${URL})
echo "ELS NUMEROS GENERATS SON $(NUMEROS)"

#HEM DE RECORRE AQUEST NUMEROS  PER CALCULAR LA SUMA

SUMA=0
for N in ${NUMEROS}
do
    SUMA=$((SUMA+${N}))
done

echo "LA SUMA DELS NUMEROS GENERATS ES: ${SUMA}"