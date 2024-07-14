#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <url> <wordlist>"
    exit 1
fi

URL=$1
WORDLIST=${2:-"/usr/share/wordlists/dirb/common.txt"}

echo "Realizando escaneo Wfuzz en $URL con la wordlist $WORDLIST"
wfuzz -c -z file,$WORDLIST --hc 404 $URL/FUZZ -o wfuzz_scan_$URL.txt

echo "Escaneo completado. Resultados guardados en wfuzz_scan_$URL.txt"
