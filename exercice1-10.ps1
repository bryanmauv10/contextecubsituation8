# Demande le nom du processus à filtrer
$MotName = Read-Host "Entrez le mot à filtrer pour le parcours du fichier"

# Importer la liste des services démarrés depuis services.csv
$services = Import-Csv -Path "services.csv" | Where-Object { $_.Status -eq "Running" }

# Parcourir la liste des services et afficher le nom et le statut de chaque service contenant "system"
foreach ($service in $services) {
    if ($service.Name -match $MotName) {
        Write-Host "$($service.Name) $($service.Status)" -ForegroundColor Green
    }
}
