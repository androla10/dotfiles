# Dotfiles

Repositorio de dotfiles gestionado con chezmoi para Windows y WSL/Linux.

## Herramientas principales

- chezmoi para aplicar y versionar la configuracion
- Git para control de cambios
- PowerShell para scripts de instalacion y mantenimiento
- Bash para shell interactiva y aliases
- zellij para multiplexado de terminal
- Neovim con configuracion NvChad para edicion
- Alacritty como terminal grafico
- vfox para gestionar versiones de herramientas de desarrollo

## Versiones fijadas

Las versiones que usa el entorno estan definidas en [.chezmoidata.toml](.chezmoidata.toml):

- Java: `21.0.11+10-tem`
- Maven: `3.9.16`
- Node.js: `20`
- Python: `3.12`

## Estructura

```text
~/.local/share/chezmoi/
├── .chezmoi.toml.tmpl                         # Configuracion global de chezmoi
├── .chezmoidata.toml                          # Variables por máquina
├── .chezmoiscripts/
│   ├── run_once_before_1_install_packages_windows.ps1.tmpl
│   ├── run_once_before_2_install_maven.ps1.tmpl
│   └── run_once_before_3_install_java.ps1.tmpl
├── AppData/
│   └── Local/
│       ├── nvim/
│       │   └── ...                            # Configuracion activa de Neovim
├── Documents/
│   └── PowerShell/
│       └── Microsoft.PowerShell_profile.ps1.tmpl
├── dot_bash_aliases                           # Alias de Bash
├── dot_bashrc                                 # Configuracion de Bash
├── dot_config/
│   ├── dot_zsh_aliases                        # Alias de Zsh
│   ├── executable_install.sh                  # Instalador shell
│   ├── executable_install_sdkman.sh           # Instalador de SDKMAN
│   ├── executable_install_zap.sh              # Instalador de Zap
│   ├── nvim_back/
│   │   └── ...                                # Copia de Neovim para dot_config para Linux
│   └── zellij/
│       └── config.kdl                         # Configuracion de zellij
├── dot_gitconfig.tmpl                         # Plantilla de Git
├── dot_private/
│   └── Brewfile                               # Paquetes privados
├── scripts/
│   ├── install-nvchad.ps1                     # Instala NvChad en AppData\Local\nvim
│   ├── refresh-env.ps1                        # Refresca el entorno
│   └── utils.ps1                              # Funciones compartidas
└── .chezmoiignore                             # Excluir segun máquina
```

## Scripts utiles

- `scripts/install-nvchad.ps1`: clona NvChad en `%LOCALAPPDATA%\\nvim` si no existe
- `scripts/refresh-env.ps1`: refresca el entorno
- `scripts/utils.ps1`: funciones compartidas para scripts

## Notas

- `machine` en [.chezmoidata.toml](.chezmoidata.toml) permite cambiar entre perfiles `personal` y `work`.
- `vfox.proxyEnable` y `vfox.proxyUrl` estan definidos en la data central para controlar el acceso a descargas.
