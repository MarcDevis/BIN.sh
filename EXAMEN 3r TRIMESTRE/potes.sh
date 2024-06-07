#!/bin/bash

#preguntar el numero de gatos
echo -n "Número de gatos? "
read numero_gatos

#preguntar el número de pajaros
echo -n "Número de pájaros? "
read numero_pajaros

#numero total de patas
patas_gatos=$((numero_gatos * 4))
patas_pajaros=$((numero_pajaros * 2))
total_patas=$((patas_gatos + patas_pajaros))

# Mostrar el resultado
echo "El número total de patas es: $total_patas"
