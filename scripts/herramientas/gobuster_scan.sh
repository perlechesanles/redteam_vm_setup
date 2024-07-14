#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <target> <wordlist>"
    exit 1
fi

TARGET=$1
WORDLIST=${2:-"/usr/share/wordlists/dirb/common.txt"}

echo "Realizando escaneo Gobuster en $TARGET con la wordlist $WORDLIST"
gobuster dir -u $TARGET -w $WORDLIST -o gobuster_scan_$TARGET.txt

echo "Escaneo completado. Resultados guardados en gobuster_scan_$TARGET.txt"
