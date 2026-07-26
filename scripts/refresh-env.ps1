# Refresh the environment variables to include the new installations
Write-Host "Refreshing environment variables." -ForegroundColor Yellow

$env:Path = (
    [Environment]::GetEnvironmentVariable("Path", "Machine"),
    [Environment]::GetEnvironmentVariable("Path", "User")
) -join ";"