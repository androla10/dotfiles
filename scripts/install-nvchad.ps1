$nvimPath = Join-Path $env:LOCALAPPDATA "nvim"

if (Test-Path (Join-Path $nvimPath ".git")) {
    Write-Host "✓ NvChad ya está instalado." -ForegroundColor Yellow
}
else {
    if (Test-Path $nvimPath) {
        Write-Host "La carpeta '$nvimPath' ya existe, pero no es un repositorio Git." -ForegroundColor Red
        Write-Host "Elimine la carpeta o cambie la ruta antes de continuar."
        exit 1
    }

    Write-Host "Instalando NvChad..." -ForegroundColor Cyan
    git clone https://github.com/NvChad/starter $nvimPath
}