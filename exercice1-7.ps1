# Liste les services d�marr�s et leurs informations
$services = Get-Service | Where-Object {$_.Status -eq "Running"} | Select-Object Name,DisplayName,Description,Status

# Exporte les informations dans un fichier CSV
$services | Export-Csv -Path "services.csv" -Encoding UTF8 -NoTypeInformation

# Affiche les informations � l'�cran
$services | Format-Table -AutoSize
