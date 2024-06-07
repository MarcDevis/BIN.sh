#!/bin/bash

#comprobar si se ha puesto un argumento
if [ "$#" -ne 1 ]; then
    echo "Error: Se necesita un unico parametor."
    exit 1
fi

# Guardar el valor del parametro en la variable N
N=$1

# Función para calcular el factorial
factorial() {
    if [ "$1" -le 1 ]; then
        echo 1
    else
        echo $(( $1 * $(factorial $(( $1 - 1 ))) ))
    fi
}

#calcular el factorial de N
factorial_N=$(factorial $N)

#calcular el factorial de (N-1)
factorial_N_1=$(factorial $(( N - 1 )))

#calcular el resultado 
resultado=$(( factorial_N / factorial_N_1 ))

#resultado
echo "Resultado: $N! / ($N - 1)! = $resultado"

