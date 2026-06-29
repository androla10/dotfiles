# Install NeoVim
winget install -e --id Neovim.Neovim --source winget

# Install Nerd Fonts
winget install -e --id DEVCOM.JetBrainsMonoNerdFont --source winget

# Instalamos NvChad
git clone https://github.com/NvChad/starter $ENV:USERPROFILE\AppData\Local\nvim; nvim