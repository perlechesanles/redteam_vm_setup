#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <target>"
    exit 1
fi

TARGET=$1

echo "Realizando escaneo Nuclei en $TARGET"
nuclei -u $TARGET -o nuclei_scan_$TARGET.txt

echo "Escaneo completado. Resultados guardados en nuclei_scan_$TARGET.txt"
