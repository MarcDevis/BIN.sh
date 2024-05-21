#!/bin/bash

# Notificació de missatges del sistema per Telegram usant un Bot

TOKEN="6568313886:AAGu1SO6wPXv81TJtktm5SE32FByQQdPVgo"
ID="6183616286"
MENSAJE="Hola! La data del equip és: $(date)"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$ID -d text="$MENSAJE"
