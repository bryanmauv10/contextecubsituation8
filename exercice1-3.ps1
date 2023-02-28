# Affiche les processus svchost et leurs informations
Get-Process | Where-Object {$_.ProcessName -eq "svchost"} | Select-Object Id,ProcessName,Description | Format-Table -AutoSize