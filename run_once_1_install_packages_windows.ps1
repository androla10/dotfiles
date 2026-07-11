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
& (Join-Path $chezmoiSource "scripts\install-nvchad.ps1")

# Refresh the environment variables to include the new installations
$env:Path = (
    [Environment]::GetEnvironmentVariable("Path", "Machine"),
    [Environment]::GetEnvironmentVariable("Path", "User")
) -join ";"