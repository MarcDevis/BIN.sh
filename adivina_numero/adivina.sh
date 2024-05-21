#!/bin/bash

#Genera un nombre aleatori entre 1 i 10:
adivina=$(( ( RANDOM % 10 )  + 1 ))
echo "el número a advinar és $adivina"
########################################################
# Escriu el teu codi aqui
########################################################
INTENTS_TOTALS=3
INTENTS_CONSUMITS=0
while [[ INTENTS_CONSUMITS -lt INTENTS_TOTALS ]]
do
    #consumim un intent
    INTENTS_CONSUMITS=$((INTENTS_CONSUMITS+1))
    #demanar a l'usuari que introdueixi un número
    read -p "INTRODUEIX UN NÚMERO: " NUMERO_INTRODUIT

    # Si el nombre introduït és més petit, l'script escriurà 
    # per pantalla "Fred!"
    if [[ $NUMERO_INTRODUIT -lt adivina ]]
    then
        echo "Fred!"
    elif [[ $NUMERO_INTRODUIT -gt adivina ]]
    then
        #Si el nombre introduït és més gran, l'script escriurà 
        # per pantalla "Calent!"
        echo "Calent!"
    else
        # Si el nombre introduït és igual, l'script escriurà per pantalla "Eureka!"
        echo "eureka!"
        exit 0
    fi
done

########################################################
# Fi del teu codi
########################################################

echo "El nombre que havies d'adivinar era: ${adivina}"