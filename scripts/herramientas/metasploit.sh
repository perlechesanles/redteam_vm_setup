#!/bin/bash

echo "Iniciando Metasploit"
sudo systemctl start postgresql
msfdb init
msfconsole
