#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <target> <port>"
    exit 1
fi

TARGET=$1
PORT=${2:-"80"}

echo "Realizando escaneo Masscan en $TARGET en el puerto $PORT"
sudo masscan $TARGET -p $PORT --rate=1000 -oG masscan_scan_$TARGET.txt

echo "Escaneo completado. Resultados guardados en masscan_scan_$TARGET.txt"
