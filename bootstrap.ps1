# Verificar si Scoop está instalado
if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Output "Scoop no encontrado. Instalando Scoop..."
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    Invoke-RestMethod get.scoop.sh | Invoke-Expression
} else {
    Write-Output "Scoop ya está instalado."
}

# Verificar si git está instalado
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Output "Instalando git con Scoop..."
    scoop install git
} else {
    Write-Output "git ya se encuentra instalado."
}

# Actualizar scoop antes de instalar
scoop update

# Verificar si chezmoi está instalado
if (-not (Get-Command chezmoi -ErrorAction SilentlyContinue)) {
    Write-Output "Instalando chezmoi con Scoop..."
    scoop install chezmoi
} else {
    Write-Output "chezmoi ya está instalado."
}

# Inicializar repositorio de dotfiles si se configuró $env:GITHUB_USERNAME
if ($env:GITHUB_USERNAME) {
    $repo = "https://github.com/$env:GITHUB_USERNAME/dotfiles.git"
    Write-Output "Inicializando chezmoi con $repo ..."
    chezmoi init --apply $repo
} else {
    Write-Warning "⚠️ La variable de entorno GITHUB_USERNAME no está configurada. Define antes de correr el init."
    Write-Warning 'Ejemplo: $env:GITHUB_USERNAME = "tu_usuario"'
}