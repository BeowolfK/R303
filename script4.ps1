$inputString = Read-Host "Entrez une chaine de caracteres separee par ',' "
$splitString = $inputString.split(",")
Write-Host "Voici votre chaine de caractere séparee :"
foreach ($element in $splitString)  
    {
        Write-Host $element
    }
