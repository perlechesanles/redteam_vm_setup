#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]; then
    echo "Uso: $0 <target> <username> <password>"
    exit 1
fi

TARGET=$1
USERNAME=$2
PASSWORD=$3

echo "Iniciando conexión Evil-WinRM en $TARGET con el usuario $USERNAME"
evil-winrm -i $TARGET -u $USERNAME -p $PASSWORD

echo "Conexión Evil-WinRM completada."
