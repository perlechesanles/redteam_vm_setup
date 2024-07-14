#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <target>"
    exit 1
fi

TARGET=$1

echo "Enumerando LDAP en $TARGET"
nmap -p 389 --script ldap-search $TARGET

echo "Enumeración LDAP completada en $TARGET"
