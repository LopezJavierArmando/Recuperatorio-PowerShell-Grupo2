for ($i = 1; $i -le 3; $i++) {
    Write-Host "========================================================" -ForegroundColor Cyan
    
    if ($i % 2 -eq 0) {
        Write-Host "[Intento $i]: Verificación de red en iteración PAR" -ForegroundColor Yellow
    } else {
        Write-Host "[Intento $i]: Verificación de red en iteración IMPAR" -ForegroundColor Magenta
    }

    Write-Host "Fecha y hora exacta: $(Get-Date)" -ForegroundColor DarkGray

    Write-Host "Ejecutando prueba de conectividad hacia 8.8.8.8 (Google DNS)..."
    Test-Connection -TargetName "8.8.8.8" -Count 1

    Start-Sleep -Seconds 2
}

Write-Host "========================================================" -ForegroundColor Green
Write-Host "El monitoreo ha concluido con éxito." -ForegroundColor Green
Write-Host "========================================================" -ForegroundColor Green