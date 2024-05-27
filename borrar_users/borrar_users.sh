#!/bin/bash

# Entrar com a root
if [[ ${UID} -ne 0 ]]
then
    echo "no ets root"
    exit 1
fi

# PODEM TENIR UN O DOS PARÀMETRES
if [[ ${#} -lt 1 || ${#} -gt 2 ]]
then
    echo "Número incorrecte de paràmetres. Es necessiten un o dos paràmetres."
    exit 1
fi

# SI TENIM DOS PARÀMETRES EL PRIMER INDICARÀ Y o N 
# INDICANT QUE VOLEM BORRAR EL HOME O NO Y EL SEGON SERÀ
# L'USER_NAME QUE VOLEM ESBORRAR
if [[ ${#} -eq 2 ]]
then
    BORRAR_HOME=${1}
    USER_NAME=${2}

    if [[ ${BORRAR_HOME} == "Y" ]]
    then
        # Esborrar usuari amb el seu HOME
        userdel -r ${USER_NAME}
    elif [[ ${BORRAR_HOME} == "N" ]]
    then
        # Esborrar usuari sense esborrar el seu HOME
        userdel ${USER_NAME}
    else
        echo "El primer paràmetre ha de ser 'Y' o 'N'."
        exit 1
    fi

# SI TENIM UN PARÀMETRE VOLDRÀ INDICAR EL USER_NAME I NO 
# BORRAREM EL HOME
elif [[ ${#} -eq 1 ]]
then
    USER_NAME=${1}
    # Esborrar usuari sense esborrar el seu HOME
    userdel ${USER_NAME}
fi

# Confirmació de l'esborrat
if [[ $? -eq 0 ]]
then
    echo "L'usuari ${USER_NAME} ha estat esborrat correctament."
else
    echo "Hi ha hagut un error en esborrar l'usuari ${USER_NAME}."
    exit 1
fi
