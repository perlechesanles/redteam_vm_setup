#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Uso: $0 <hashfile> <hashtype>"
    echo "Ejemplo: $0 hashes.txt 1000"
    exit 1
fi

HASHFILE=$1
HASHTYPE=$2

echo "Iniciando crackeo de hashes con Hashcat en $HASHFILE usando tipo de hash $HASHTYPE"
hashcat -m $HASHTYPE $HASHFILE /usr/share/wordlists/rockyou.txt -o hashcat_crack_$HASHFILE.txt

echo "Crackeo de hashes completado. Resultados guardados en hashcat_crack_$HASHFILE.txt"
