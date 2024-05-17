#!/bin/bash

# Configuración del bot de Telegram
BOT_TOKEN="6723367157:AAFVTJg9zIgRucyTAVrHi9-J8Fva0r7-s8Q"
CHAT_ID="6183616286"

# Obtener la dirección IP
IP=$(hostname -I | awk '{print $1}')

# Crear el mensaje
MESSAGE="La dirección IP de la máquina es: $IP"

# Enviar el mensaje a través de la API de Telegram
curl -s -X POST "https://api.telegram.org/bot${BOT_TOKEN}/sendMessage" -d chat_id="${CHAT_ID}" -d text="${MESSAGE}"
