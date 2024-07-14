#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <target>"
    exit 1
fi

TARGET=$1

echo "Realizando enumeración mejorada en $TARGET"
nmap -sV -sC $TARGET -oN custom_enum_nmap_$TARGET.txt
enum4linux -a $TARGET | tee custom_enum_enum4linux_$TARGET.txt
smbclient -L $TARGET -N | tee custom_enum_smb_$TARGET.txt

echo "Enumeración mejorada completada en $TARGET"
