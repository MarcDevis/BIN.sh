#!/bin/bash
#aquest script ha de tenir obligatòriament un paràmetre
NUMERO_PARAMETRES=${#}
if [[ ${NUMERO_PARAMETRES} -ne 1 ]]
then
    echo "aquest script necessita un paràmetre"
    exit 1
fi
MISSATGE=${1}
TOKEN="6568313886:AAGu1SO6wPXv81TJtktm5SE32FByQQdPVgo"
ID="6183616286"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST ${URL} -d chat_id=${ID} -d text="${MISSATGE}"
exit 0