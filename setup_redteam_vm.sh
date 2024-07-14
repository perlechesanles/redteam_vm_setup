#!/bin/bash

# Actualizar el sistema
sudo apt update && sudo apt upgrade -y

# Instalar herramientas básicas
sudo apt install -y nmap metasploit-framework nikto gobuster curl jq \
                    python3 python3-pip virtualenv docker.io docker-compose \
                    enum4linux sqlmap wfuzz nuclei masscan wpscan ffuf \
                    aircrack-ng kismet reaver bluez btscanner hydra john hashcat \
                    responder impacket veil

# Instalar herramientas desde repositorios específicos
git clone https://github.com/projectdiscovery/nuclei.git /opt/nuclei
git clone https://github.com/epi052/recon-pipeline.git /opt/recon-pipeline
git clone https://github.com/vanhauser-thc/thc-hydra.git /opt/thc-hydra
git clone https://github.com/SecureAuthCorp/impacket.git /opt/impacket
git clone https://github.com/Veil-Framework/Veil.git /opt/veil
git clone https://github.com/dirkjanm/PrivExchange.git /opt/PrivExchange
git clone https://github.com/EmpireProject/Empire.git /opt/Empire
git clone https://github.com/lgandx/Responder.git /opt/Responder
git clone https://github.com/0x36/linEnum.git /opt/linEnum

# Instalar dependencias para las herramientas
pip3 install -r /opt/nuclei/requirements.txt
pip3 install -r /opt/recon-pipeline/requirements.txt
pip3 install -r /opt/thc-hydra/requirements.txt
pip3 install -r /opt/impacket/requirements.txt
pip3 install -r /opt/veil/requirements.txt
pip3 install -r /opt/PrivExchange/requirements.txt
pip3 install -r /opt/Empire/setup/requirements.txt
pip3 install -r /opt/Responder/requirements.txt
pip3 install -r /opt/linEnum/requirements.txt

# Crear directorio para scripts personalizados
mkdir -p /opt/custom_scripts

# Copiar scripts personalizados al directorio
cp scripts/personalizados/*.sh /opt/custom_scripts/

# Hacer que los scripts sean ejecutables
chmod +x /opt/custom_scripts/*.sh

# Añadir scripts personalizados al PATH
echo 'export PATH=$PATH:/opt/custom_scripts' >> ~/.bashrc
source ~/.bashrc

echo "Instalación y configuración completada."
