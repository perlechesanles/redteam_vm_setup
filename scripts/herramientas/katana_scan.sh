#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <url>"
    exit 1
fi

URL=$1

echo "Realizando escaneo Katana en $URL"
katana -u $URL -o katana_scan_$URL.txt

echo "Escaneo completado. Resultados guardados en katana_scan_$URL.txt"
