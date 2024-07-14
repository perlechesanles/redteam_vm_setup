#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <target>"
    exit 1
fi

TARGET=$1

echo "Enumerando SMB en $TARGET"
smbclient -L $TARGET -N
nmap -p 139,445 --script=smb-enum* $TARGET

echo "Enumeración SMB completada en $TARGET"
