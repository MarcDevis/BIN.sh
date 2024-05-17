#!/bin/bash

# Comprovar si l'usuari és root
if [[ ${UID} -ne 0 ]]
then
    echo "no ets root"
    exit 1
fi

# Comprovar si s'han introduït 3 paràmetres
if [[ $# -ne 3 ]]
then
    echo "has d'introduir 3 paràmetres"
    exit 1
fi

# Demanar el nom complet
FULL_NAME=${1}
# Demanar l'username
USERNAME=${2}
# Demanar el password
PASSWORD=${3}

# Crear l'usuari
useradd -c "${FULL_NAME}" -m ${USERNAME}
#SI LA COMANDA FALLA SURT
echo ${?}

# Aplicar la contrasenya
echo "${USERNAME}:${PASSWORD}" | chpasswd

echo "Usuari ${USERNAME} creat correctament"
exit 0
