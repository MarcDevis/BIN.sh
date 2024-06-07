#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Error: Debes poner un año de nacimiento como unico parametro."
    exit 1
fi

ANY_NACIMIENTO=$1

#validar si el input es un número
if ! [[ "$ANY_NACIMIENTO" =~ ^[0-9]+$ ]]; then
    echo "Error: El año de nacimiento debe ser un numero."
    exit 1
fi

#calcular el año actual y la edad
ANY_ACTUAL=$(date +%Y)
EDAD=$((ANY_ACTUAL - ANY_NACIMIENTO))

#pedir el nombre del usuario
echo -n "Introduce tu nombre: "
read NOMBRE

#mensaje
echo "$NOMBRE tienes $EDAD años"
