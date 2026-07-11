$chezmoiSource = (chezmoi source-path)
Write-Host "chezmoi source path: $chezmoiSource" -ForegroundColor Cyan

# Install NeoVim
winget install -e --id Neovim.Neovim --source winget

# Install Nerd Fonts
winget install -e --id DEVCOM.JetBrainsMonoNerdFont --source winget

# Install Alacrity
winget install -e --id Alacritty.Alacritty --source winget

# Install Notepad++
winget install -e --id Notepad++.Notepad++ --source winget

# Install Ripgrep
winget install -e --id BurntSushi.ripgrep.MSVC --source winget

# Install Zellij
winget install -e --id arndawg.zellij-windows --source winget

# Install Vfox
winget install vfox --source winget

# Install NvChad
#git clone https://github.com/NvChad/starter $ENV:USERPROFILE\AppData\Local\nvim;
& "$chezmoiSource\scripts\install-nvchad.ps1"

# Refresh environment variables
& "$chezmoiSource\scripts\refresh-env.ps1"