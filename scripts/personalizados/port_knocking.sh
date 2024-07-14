#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Uso: $0 <target> <puertos>"
    echo "Ejemplo: $0 192.168.1.1 7000,8000,9000"
    exit 1
fi

TARGET=$1
PORTS=$2

echo "Realizando port knocking en $TARGET en los puertos $PORTS"
for port in $(echo $PORTS | tr "," "\n"); do
    hping3 -c 1 -S -p $port $TARGET
done

echo "Port knocking completado en $TARGET"
