# Importer la liste des services d?marr?s depuis services.csv
$services = Import-Csv -Path "services.csv" | Where-Object { $_.Status -eq "Running" }

# Parcourir la liste des services et afficher le nom et le statut de chaque service contenant "system"
foreach ($service in $services) {
    if ($service.Name -match "system") {
        Write-Host "$($service.Name) $($service.Status)" -ForegroundColor Green
    }
}
