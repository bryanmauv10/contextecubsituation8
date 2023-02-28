# Demande le nom du processus à filtrer
$processName = Read-Host "Entrez le nom du processus à filtrer"

# Affiche les processus correspondants et leurs informations
Get-Process | Where-Object {$_.ProcessName -eq $processName} | Select-Object Id,ProcessName,Description | Format-Table -AutoSize