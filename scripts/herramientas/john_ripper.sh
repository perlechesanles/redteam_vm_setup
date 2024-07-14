#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <hashfile>"
    exit 1
fi

HASHFILE=$1

echo "Iniciando crackeo de hashes con John the Ripper en $HASHFILE"
john $HASHFILE --wordlist=/usr/share/wordlists/rockyou.txt

echo "Crackeo de hashes completado. Usa 'john --show $HASHFILE' para ver las contraseñas crackeadas."
