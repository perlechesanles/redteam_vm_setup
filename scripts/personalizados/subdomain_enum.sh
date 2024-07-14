#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <domain>"
    exit 1
fi

DOMAIN=$1

echo "Enumerando subdominios para $DOMAIN"
amass enum -d $DOMAIN -o amass_$DOMAIN.txt
sublist3r -d $DOMAIN -o sublist3r_$DOMAIN.txt
assetfinder --subs-only $DOMAIN > assetfinder_$DOMAIN.txt

echo "Enumeración de subdominios completada para $DOMAIN"
