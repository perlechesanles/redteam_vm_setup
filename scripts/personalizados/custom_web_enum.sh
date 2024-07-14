#!/bin/bash

if [ -z "$1" ]; entonces
    echo "Uso: $0 <url>"
    exit 1
fi

URL=$1

echo "Realizando enumeración web mejorada en $URL"
nikto -h $URL -output custom_web_enum_nikto_$URL.txt
gobuster dir -u $URL -w /usr/share/wordlists/dirb/common.txt -o custom_web_enum_gobuster_$URL.txt
nmap -sV -sC -p- $URL -oN custom_web_enum_nmap_$URL.txt

echo "Enumeración web completada en $URL"
