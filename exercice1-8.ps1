# Demande à l'utilisateur de choisir le type de services à lister
$choice = Read-Host "Voulez-vous lister les services démarrés ou arrêtés ? (D/A)"

# Liste les services en fonction du choix de l'utilisateur
if ($choice -eq "D") {
    $services = Get-Service | Where-Object {$_.Status -eq "Running"} | Select-Object Name,DisplayName,Description,Status
} elseif ($choice -eq "A") {
    $services = Get-Service | Where-Object {$_.Status -eq "Stopped"} | Select-Object Name,DisplayName,Description,Status
} else {
    Write-Host "Choix invalide. Veuillez entrer D ou A."
}

# Exporte les informations dans un fichier CSV
$services | Export-Csv -Path "services.csv" -Encoding UTF8 -NoTypeInformation

# Affiche les informations à l'écran
$services | Format-Table -AutoSize