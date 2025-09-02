#!/usr/bin/env bash
set -e

# Instalar chezmoi si no existe
if ! command -v chezmoi &> /dev/null; then
    sh -c "$(curl -fsLS get.chezmoi.io)"
fi

# Inicializar y aplicar tu repo de dotfiles
chezmoi init --apply $GITHUB_USERNAME