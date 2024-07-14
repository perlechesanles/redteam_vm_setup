#!/bin/bash

if [ -z "$1" ]; entonces
    echo "Uso: $0 <target>"
    exit 1
fi

TARGET=$1

echo "Realizando escaneo Nikto en $TARGET"
nikto -h $TARGET -output nikto_scan_$TARGET.txt

echo "Escaneo completado. Resultados guardados en nikto_scan_$TARGET.txt"
