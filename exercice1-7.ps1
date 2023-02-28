# Liste les services démarrés et leurs informations
$services = Get-Service | Where-Object {$_.Status -eq "Running"} | Select-Object Name,DisplayName,Description,Status

# Exporte les informations dans un fichier CSV
$services | Export-Csv -Path "services.csv" -Encoding UTF8 -NoTypeInformation

# Affiche les informations à l'écran
$services | Format-Table -AutoSize
