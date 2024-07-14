#!/bin/bash

echo "Iniciando configuración de Burp Suite"
if [ -f "/usr/bin/burpsuite" ]; then
    echo "Burp Suite ya está instalado."
else
    echo "Descargando Burp Suite"
    wget https://portswigger.net/burp/releases/download?product=community&version=2023.3.1&type=jar -O burpsuite_community.jar
    sudo mv burpsuite_community.jar /usr/bin/burpsuite
    sudo chmod +x /usr/bin/burpsuite
fi

echo "Configuración completada. Puedes iniciar Burp Suite con el comando 'burpsuite'"
