# D�finit la fonction InfoProcessus
function InfoProcessus($processName)
{

# Liste les services d�marr�s et leurs informations
$services = Get-Service | Where-Object {$_.Status -match $processName} | Select-Object Name,DisplayName,Description,Status

# Exporte les informations dans un fichier CSV
$services | Export-Csv -Path "sauvegarde.csv" -Encoding UTF8 -NoTypeInformation

# Affiche les informations � l'�cran
$services | Format-Table -AutoSize

}

# Appelle la fonction InfoProcessus avec l'expression r�guli�re "power"
InfoProcessus "Running" > sauvegarde.txt