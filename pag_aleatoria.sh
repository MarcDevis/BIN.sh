#!/bin/bash


if [[ ${#} -ne 1 ]]
then
    echo "falta un paràmetre"
    exit 1
fi

QUANTS=${1}
URL="https://www.random.org/integers/?num=${QUANTS}&min=1&max=100&col=1&base=10&format=plain&rnd=new"

echo ${URL}
NUMEROS=$(curl ${URL})
echo "ELS NUMEROS GENERATS SÓN ${NUMEROS}"

#RECORRER ELS NUMEROS PER CALCULAR LA SUMA
MINIMO=100
MAXIMO=0
SUMA=0
for N in ${NUMEROS}
do
    SUMA=$((SUMA+N))
    #RECORRER ELS NUMEROS PER CALCULAR EL MAXIMO
    if (( N > MAXIMO ))
    then
        MAXIMO=$N
    fi
    #RECORRER ELS NUMEROS PER CALCULAR EL MINIMO
    if (( N < MINIMO ))
    then
        MINIMO=$N
    fi
done




#RECORRER ELS NUMEROS PER CALCULAR LA MEDIA
MEDIA=${SUMA}
MEDIA=$((SUMA/7))

output=${MEDIA}


/home/mdevisa/BIN/bot_telegram/mensaje_telegram.sh "La media es ${output}"

echo "LA SUMA ES: ${SUMA}"
echo "EL MINIMO ES: ${MINIMO}"
echo "EL MAXIMO ES: ${MAXIMO}"
echo "LA MEDIA ES: ${MEDIA}"

