# Affiche les processus svchost et leur ID
Get-Process | Where-Object {$_.ProcessName -eq "svchost"} | Select-Object Id,ProcessName
