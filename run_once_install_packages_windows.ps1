# Verificar si Scoop está instalado
if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Output "Scoop no encontrado. Instalando Scoop..."
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    irm get.scoop.sh | iex
}
else {
    Write-Output "Scoop ya está instalado."
}

# Actualizar scoop antes de instalar
scoop update

# Verificar si chezmoi está instalado
if (-not (Get-Command chezmoi -ErrorAction SilentlyContinue)) {
    Write-Output "Instalando chezmoi con Scoop..."
    scoop install git curl neovim chezmoi
}
else {
    Write-Output "chezmoi ya está instalado."
}

# Inicializar repositorio de dotfiles si se configuró $env:GITHUB_USERNAME
if ($env:GITHUB_USERNAME) {
    $repo = "https://github.com/$env:GITHUB_USERNAME/dotfiles.git"
    Write-Output "Inicializando chezmoi con $repo ..."
    chezmoi init --apply --branch feature/config-windows-initial $repo
}
else {
    Write-Warning "⚠️ La variable de entorno GITHUB_USERNAME no está configurada. Define antes de correr el init."
    Write-Warning 'Ejemplo: $env:GITHUB_USERNAME = "tu_usuario"'
}
