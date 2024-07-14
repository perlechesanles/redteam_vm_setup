#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <url>"
    exit 1
fi

URL=$1

echo "Enumerando web en $URL"
nikto -h $URL
gobuster dir -u $URL -w /usr/share/wordlists/dirb/common.txt

echo "Enumeración web completada en $URL"
