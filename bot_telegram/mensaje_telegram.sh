#!/bin/bash
#aquest script ha de tenir obligatòriament un paràmetre
NUMERO_PARAMETRES=${#}
if [[ ${NUMERO_PARAMETRES} -ne 1 ]]
then
    echo "aquest script necessita un paràmetre"
    exit 1
fi
MISSATGE=${1}
TOKEN="POSA-AQUI-EL-TEU-TOKEN"
ID="POSA-AQUI-LA-TEVA-ID"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST ${URL} -d chat_id=${ID} -d text="${MISSATGE}"
exit 0