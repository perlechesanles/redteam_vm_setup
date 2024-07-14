#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <target>"
    exit 1
fi

TARGET=$1

echo "Realizando escaneo Enum4linux en $TARGET"
enum4linux -a $TARGET | tee enum4linux_scan_$TARGET.txt

echo "Escaneo completado. Resultados guardados en enum4linux_scan_$TARGET.txt"
