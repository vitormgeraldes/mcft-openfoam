#!/bin/bash
# =============================================================
#  Instala OpenFOAM v2312 (ESI/OpenCFD) — Ubuntu 22.04
#  Executado automaticamente ao criar o Codespace
# =============================================================
set -e

echo "========================================"
echo "  MCFT — Instalação OpenFOAM v2312"
echo "========================================"

# 1. Dependências base
sudo apt-get update -qq
sudo apt-get install -y --no-install-recommends \
    curl ca-certificates gnupg lsb-release \
    vim nano tree python3 python3-pip

# 2. Repositório ESI OpenFOAM
echo "→ Adicionar repositório ESI..."
curl -s https://dl.openfoam.com/add-debian-repo.sh | sudo bash -s -- -y

# 3. Instalar OpenFOAM v2312
echo "→ Instalar openfoam2312 (pode demorar alguns minutos)..."
sudo apt-get install -y openfoam2312

# 4. Activar OpenFOAM no bashrc do utilizador
FOAM_BASHRC="/usr/lib/openfoam/openfoam2312/etc/bashrc"
if ! grep -q "openfoam2312" ~/.bashrc; then
    echo "" >> ~/.bashrc
    echo "# OpenFOAM v2312" >> ~/.bashrc
    echo "source ${FOAM_BASHRC}" >> ~/.bashrc
fi

# 5. Activar na sessão actual
source "${FOAM_BASHRC}"

echo ""
echo "========================================"
echo "  OpenFOAM instalado com sucesso!"
echo "  WM_PROJECT_DIR: ${WM_PROJECT_DIR}"
echo "  Testa com: blockMesh -help"
echo "========================================"
