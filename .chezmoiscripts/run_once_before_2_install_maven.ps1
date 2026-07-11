$chezmoiSource = (chezmoi source-path)
Write-Host "chezmoi source path: $chezmoiSource" -ForegroundColor Cyan
Write-Host "chezmoi root path: $PSScriptRoot" -ForegroundColor Cyan

# install-maven.ps1
$ErrorActionPreference = "Stop"

# ========================================
# Configuración
# ========================================
$mavenVersion = "3.9.11"

Write-Host "========== Instalación de Maven ==========" -ForegroundColor Cyan

# Verificar que vfox exista
if (-not (Get-Command vfox -ErrorAction SilentlyContinue)) {
    Write-Error "vfox no está instalado o no se encuentra en el PATH."
    exit 1
}

# Verificar si el plugin de Maven existe
$plugins = vfox plugin list

if ($plugins -notmatch "maven") {
    Write-Host "Instalando plugin Maven..." -ForegroundColor Yellow
    vfox add maven
}
else {
    Write-Host "Plugin Maven ya instalado." -ForegroundColor Green
}

# Verificar si la versión ya está instalada
$installedVersions = vfox list maven

if ($installedVersions -match $mavenVersion) {
    Write-Host "Maven $mavenVersion ya está instalado." -ForegroundColor Green
}
else {
    Write-Host "Instalando Maven $mavenVersion..." -ForegroundColor Yellow
    vfox install maven@$mavenVersion
}

# Establecer versión global
Write-Host "Configurando Maven $mavenVersion como versión global..." -ForegroundColor Yellow
vfox use --global maven@$mavenVersion

Write-Host ""
Write-Host "==========================================" -ForegroundColor Cyan
Write-Host "Maven instalado correctamente." -ForegroundColor Green
Write-Host ""

# Actualizar el entorno para reflejar los cambios
& "$PSScriptRoot\scripts\refresh-env.ps1"

# Mostrar versión instalada
mvn -version