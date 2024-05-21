#!/bin/bash

LOGFILE="user_creation.log"

# Comprova si l'script s'està executant com a root
if [[ ${UID} -ne 0 ]]
then
    echo "no ets root"
    exit 1
fi

# Demana el nom complet
read -p "Introdueix el nom complet: " FULL_NAME

# Demana el nom d'usuari
read -p "Introdueix el nom d'usuari: " USERNAME

# Genera una contrasenya aleatòria
PASSWORD=$(openssl rand -base64 12)

# Crea l'usuari amb el nom complet
useradd -c "${FULL_NAME}" -m ${USERNAME} > /dev/null

# Comprova si la comanda ha fallat
if [[ $? -ne 0 ]]
then
    echo "errada creant l'usuari"
    exit 1
fi

# Assigna la contrasenya a l'usuari
echo "${USERNAME}:${PASSWORD}" | chpasswd

# Comprova que el canvi de contrasenya ha estat correcte
if [[ $? -ne 0 ]]
then
    echo "errada canviant la contrasenya"
    exit 1
fi

# Força el canvi de contrasenya en el primer login
chage -d 0 ${USERNAME}

# Mostra l'usuari i la contrasenya per pantalla
echo "Usuari ${USERNAME} creat correctament:"
echo "Nom d'usuari: ${USERNAME}"
echo "Contrasenya: ${PASSWORD}"

# Registra la informació en un fitxer de log
echo "Usuari ${USERNAME} creat correctament:" >> ${LOGFILE}
echo "Nom d'usuari: ${USERNAME}" >> ${LOGFILE}
echo "Contrasenya: ${PASSWORD}" >> ${LOGFILE}
echo "---------------------------" >> ${LOGFILE}

exit 0
