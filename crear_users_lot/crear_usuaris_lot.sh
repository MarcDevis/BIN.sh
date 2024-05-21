#!/bin/bash

USER_LIST="usuaris.txt"

while IFS=, read -r FULL_NAME USERNAME
do
    echo "Creant usuari: $FULL_NAME amb nom d'usuari: $USERNAME"
    sudo ./crear_user_log.sh <<< "$FULL_NAME"$'\n'"$USERNAME"
done < ${USER_LIST}
