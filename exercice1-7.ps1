# Définit la fonction InfoProcessus
function InfoProcessus($processName)
{

# Liste les services démarrés et leurs informations
$services = Get-Service | Where-Object {$_.Status -match $processName} | Select-Object Name,DisplayName,Description,Status

# Exporte les informations dans un fichier CSV
$services | Export-Csv -Path "sauvegarde.csv" -Encoding UTF8 -NoTypeInformation

# Affiche les informations à l'écran
$services | Format-Table -AutoSize

}

# Appelle la fonction InfoProcessus avec l'expression régulière "power"
InfoProcessus "Running" > sauvegarde.txt