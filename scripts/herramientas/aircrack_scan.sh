#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <interface>"
    exit 1
fi

INTERFACE=$1

echo "Iniciando modo monitor en $INTERFACE"
sudo airmon-ng start $INTERFACE

echo "Iniciando escaneo Aircrack-ng en $INTERFACE"
sudo airodump-ng $INTERFACE

echo "Escaneo completado. Puedes utilizar airodump-ng para capturar paquetes."
