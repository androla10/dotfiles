# Instalar chezmoi si no existe
if (-not (Get-Command chezmoi -ErrorAction SilentlyContinue)) {
    Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://get.chezmoi.io/ps1'))
}

# Inicializar y aplicar tu repo de dotfiles
chezmoi init --apply $GITHUB_USERNAME