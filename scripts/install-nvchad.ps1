$nvimPath = Join-Path $env:LOCALAPPDATA "nvim"

if (Test-Path (Join-Path $nvimPath ".git")) {
    Write-Status -Level "INFO" -Message "NvChad ya esta instalado."
}
else {
    if (Test-Path $nvimPath) {
        Write-Status -Level "ERROR" -Message "La carpeta '$nvimPath' ya existe, pero no es un repositorio Git."
        Write-Status -Level "INFO" -Message "Elimine la carpeta o cambie la ruta antes de continuar."
        exit 1
    }

    Write-Status -Level "INFO" -Message "Instalando NvChad..."
    git clone https://github.com/NvChad/starter $nvimPath
}