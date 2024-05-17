#!/bin/bash

TOKEN="6568313886:AAGu1SO6wPXv81TJtktm5SE32FByQQdPVgo"
ID="6183616286"
if [[ ${#} -ne "1" ]]
then
    echo "pon un parametro"
fi
MENSAJE=${1}
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"
