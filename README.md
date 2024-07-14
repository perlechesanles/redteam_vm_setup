# Red Team VM Setup

Este repositorio contiene scripts y manuales para configurar una máquina virtual centrada en herramientas de Red Teaming, Pentesting, Bug Bounty y CTFs.

## Instrucciones de Uso

### Paso 1: Clonar el Repositorio

```bash
git clone https://github.com/perlechesanlres/redteam_vm_setup.git
cd redteam_vm_setup
```

### Paso 2: Ejecutar el Script de Configuración

```bash
chmod +x setup_redteam_vm.sh
sudo ./setup_redteam_vm.sh
```
Este script actualizará el sistema, instalará las herramientas necesarias y configurará el entorno.

### Paso 3: Utilizar los Scripts de Herramientas

Los scripts para cada herramienta se encuentran en el directorio scripts/herramientas/. Asegúrate de darles permisos de ejecución:

```bash
chmod +x scripts/herramientas/*.sh
```
Ejecuta los scripts según tus necesidades. Por ejemplo, para realizar un escaneo con Nmap:
```bash
bash scripts/herramientas/nmap_s
can.sh <target>
```
Scripts Personalizados

Los scripts personalizados se encuentran en el directorio scripts/personalizados/. Asegúrate de darles permisos de ejecución:
```bash
 chmod +x scripts/personalizados/*.sh
```
Manuales

Los manuales para cada herramienta se encuentran en el directorio man/herramientas/ y los manuales para los scripts personalizados en el directorio man/personalizados/. Puedes verlos con el comando man:
```bash
man ./man/herramientas/nmap_scan.1
man ./man/personalizados/savitar_enum.1
```



