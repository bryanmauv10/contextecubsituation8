# Définit la fonction InfoProcessus
function InfoProcessus($processName)
{
    # Affiche les processus correspondants et leurs informations
    Get-Process | Where-Object {$_.ProcessName -match $processName} | Select-Object Id,ProcessName,Description | Format-Table -AutoSize
}


# Appelle la fonction InfoProcessus avec le nom de processus en paramètre
InfoProcessus "power"
