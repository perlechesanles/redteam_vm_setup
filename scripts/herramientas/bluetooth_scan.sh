#!/bin/bash

echo "Iniciando escaneo de dispositivos Bluetooth"

# Iniciar el servicio Bluetooth si no está en ejecución
sudo systemctl start bluetooth

# Escanear dispositivos Bluetooth cercanos
hcitool scan

echo "Escaneo de dispositivos Bluetooth completado."
