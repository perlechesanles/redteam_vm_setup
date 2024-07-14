#!/bin/bash

echo "Instalando scripts de Marinesh de Savitar"
cd /opt
git clone https://github.com/s4vitar/s4vitar-scripts.git
cd s4vitar-scripts
chmod +x *.sh

echo "Instalación completada. Los scripts se encuentran en /opt/s4vitar-scripts"
