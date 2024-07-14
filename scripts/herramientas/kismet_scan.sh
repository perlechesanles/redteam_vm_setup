#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <interface>"
    exit 1
fi

INTERFACE=$1

echo "Iniciando escaneo Kismet en $INTERFACE"
sudo kismet -c $INTERFACE

echo "Escaneo Kismet iniciado en $INTERFACE. Abre tu navegador y ve a http://localhost:2501 para ver los resultados."
