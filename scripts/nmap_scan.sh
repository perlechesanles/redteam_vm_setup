#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <target> [opciones]"
    exit 1
fi

TARGET=$1
OPTIONS=${2:-"-sV -sC"}

echo "Realizando escaneo Nmap en $TARGET con opciones $OPTIONS"
nmap $OPTIONS $TARGET -oN nmap_scan_$TARGET.txt

echo "Escaneo completado. Resultados guardados en nmap_scan_$TARGET.txt"
