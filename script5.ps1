if ($args.Count -eq 0) 
    {
    Write-Host "Erreur, vous n'avez rentré aucun argument"
    exit
    }

$adr = $args[0]
Write-Host "Adresse IP saisie : $adr"
$arrAdr = $adr.Split(".")
$arrAdr = $arrAdr | ForEach-Object { [int]$_ }
$arrAdr | ForEach-Object {
    if ($_ -gt 255) {
        Write-Host "Erreur : un des octets de l'adresse IP depasse 255."
        exit
    }
}

if ($arrAdr[0] -lt 128) {Write-Host "Adresse IP de Classe A"}   
elseif ($arrAdr[0] -lt 192) {Write-Host "Adresse IP de Classe B"} 
elseif ($arrAdr[0] -lt 224){Write-Host "Adresse IP de Classe C"}
elseif ($arrAdr[0] -lt 240){Write-Host "Adresse IP de Classe D"} 
elseif ($arrAdr[0] -lt 255){Write-Host "Adresse IP de Classe E"} 
else {Write-Host "Adresse IP non valide"}