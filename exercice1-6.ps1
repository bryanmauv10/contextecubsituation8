# Définit la fonction InfoProcessus
function InfoProcessus($processName)
{
    # Affiche les processus correspondants et leurs informations
    $processes = Get-Process | Where-Object {$_.ProcessName -match $processName} | Select-Object Id,ProcessName,Description

    # Enregistre les informations dans un fichier texte
    $processes | Out-File -FilePath "sauvegarde.txt" -Encoding UTF8

    # Enregistre les informations dans un fichier CSV
    $processes | Export-Csv -Path "sauvegarde.csv" -Encoding UTF8 -NoTypeInformation
}

# Appelle la fonction InfoProcessus avec l'expression régulière "power"
InfoProcessus "power"