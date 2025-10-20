# Matar todos los procesos de Electron/Atila Launcher
Write-Host "Cerrando procesos de Electron/Atila Launcher..." -ForegroundColor Yellow
Get-Process | Where-Object {$_.ProcessName -like "*Atila*" -or $_.ProcessName -eq "electron"} | Stop-Process -Force

# Esperar 2 segundos
Write-Host "Esperando..." -ForegroundColor Yellow
Start-Sleep -Seconds 2

# Borrar carpeta dist
if (Test-Path "dist") {
    Write-Host "Eliminando carpeta dist..." -ForegroundColor Yellow
    Remove-Item -Recurse -Force "dist"
    Write-Host "Carpeta dist eliminada correctamente." -ForegroundColor Green
} else {
    Write-Host "La carpeta dist no existe." -ForegroundColor Cyan
}

Write-Host "Limpieza completada." -ForegroundColor Green