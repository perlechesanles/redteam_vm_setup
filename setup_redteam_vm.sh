#!/bin/bash

# Función para instalar paquetes con apt
install_apt_packages() {
  apt update
  apt install -y \
    git \
    python3 \
    python3-pip \
    swig \
    gcc \
    libssl-dev \
    python3-dev \
    impacket-scripts \
    # otros paquetes necesarios
}

# Función para instalar paquetes de Python
install_python_packages() {
  python3 -m pip install --upgrade pip
  python3 -m pip install \
    flask \
    requests==2.18.4 \
    impacket \
    # otros paquetes necesarios
}

# Clonar repositorios
clone_repositories() {
  repos=(
    "https://github.com/projectdiscovery/nuclei.git"
    "https://github.com/recon-pipeline/recon-pipeline.git"
    "https://github.com/vanhauser-thc/thc-hydra.git"
    "https://github.com/SecureAuthCorp/impacket.git"
    "https://github.com/Veil-Framework/Veil.git"
    "https://github.com/dirkjanm/PrivExchange.git"
    "https://github.com/BC-SECURITY/Empire.git"
    "https://github.com/lgandx/Responder.git"
    "https://github.com/rebootuser/LinEnum.git"
  )

  for repo in "${repos[@]}"; do
    dir="/opt/$(basename ${repo%.git})"
    if [ -d "$dir" ]; then
      echo "$dir ya existe, no se clona de nuevo."
    else
      git clone "$repo" "$dir"
    fi
  done
}

# Función para manejar errores de permisos
handle_permissions() {
  chown -R $(whoami):$(whoami) /opt/*
  chmod -R 755 /opt/*
}

# Crear directorio para scripts personalizados
setup_custom_scripts() {
  mkdir -p /opt/custom_scripts
  cp ./scripts/personalizados/*.sh /opt/custom_scripts/
  chmod +x /opt/custom_scripts/*.sh
}

# Función principal
main() {
  install_apt_packages
  install_python_packages
  clone_repositories
  handle_permissions
  setup_custom_scripts

  echo "Instalación y configuración completada."
}

# Ejecutar función principal
main
