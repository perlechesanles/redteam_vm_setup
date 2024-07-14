#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <url> <wordlist>"
    exit 1
fi

URL=$1
WORDLIST=${2:-"/usr/share/wordlists/dirb/common.txt"}

echo "Realizando escaneo FFUF en $URL con la wordlist $WORDLIST"
ffuf -u $URL/FUZZ -w $WORDLIST -o ffuf_scan_$URL.json

echo "Escaneo completado. Resultados guardados en ffuf_scan_$URL.json"
