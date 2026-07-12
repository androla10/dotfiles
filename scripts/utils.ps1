function Write-Status {
    param(
        [ValidateSet("OK","INFO","WARN","ERROR")]
        [string]$Level,
        [string]$Message
    )

    $color = switch ($Level) {
        "OK"    { "Green" }
        "INFO"  { "Cyan" }
        "WARN"  { "Yellow" }
        "ERROR" { "Red" }
    }

    Write-Host "[$Level] $Message" -ForegroundColor $color
}