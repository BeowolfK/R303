ipconfig | Select-String "IPv4"
Get-NetAdapter

$services = Get-Service | Where-Object {$_.Status -eq "Running"}
foreach ($service_run in $services) 
    {
        Write-Host "Nom du service: $($service_run.Name)"
        Write-Host "Statut du service: $($service_run.Status)"
        Write-Host "---"
    }

$interfaces = Get-NetAdapter
foreach ($interface in $interfaces) 
    {
        Write-Host "Nom de l'interface : $($interface.Name)"
        Write-Host "Adresse MAC : $($interface.MacAddress)"
        Write-Host "Statut : $($interface.Status)"
        Write-Host "---"
    }