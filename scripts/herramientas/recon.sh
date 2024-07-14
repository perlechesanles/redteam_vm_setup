#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <target_domain>"
    exit 1
fi

TARGET=$1

echo "Realizando reconocimiento en $TARGET"
echo "Ejecutando amass"
amass enum -d $TARGET -o amass_$TARGET.txt

echo "Ejecutando sublist3r"
sublist3r -d $TARGET -o sublist3r_$TARGET.txt

echo "Ejecutando assetfinder"
assetfinder --subs-only $TARGET > assetfinder_$TARGET.txt

echo "Ejecutando recon-ng"
recon-ng -m marketplace install all
recon-ng -r recon_$TARGET.txt -C "workspaces create $TARGET; modules load recon/domains-hosts/bing_domain_web; set SOURCE $TARGET; run; output create $TARGET.csv; exit"

echo "Reconocimiento completado en $TARGET"
