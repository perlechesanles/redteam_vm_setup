#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <url>"
    exit 1
fi

URL=$1

echo "Realizando escaneo WPScan en $URL"
wpscan --url $URL --enumerate p --output wpscan_$URL.txt

echo "Escaneo completado. Resultados guardados en wpscan_$URL.txt"
