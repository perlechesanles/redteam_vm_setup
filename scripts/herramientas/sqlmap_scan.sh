#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <url> [opciones]"
    exit 1
fi

URL=$1
OPTIONS=${2:-"--batch --level=5 --risk=3"}

echo "Realizando escaneo SQLMap en $URL con opciones $OPTIONS"
sqlmap -u $URL $OPTIONS -o sqlmap_scan_$URL.txt

echo "Escaneo completado. Resultados guardados en sqlmap_scan_$URL.txt"
