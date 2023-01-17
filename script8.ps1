$path = $args[0]
$intervalle = $args[1]

if ($null -eq $path) {
    Write-Output "Absence de fichier / dossier à sauvegarder"
    exit
}
if ($null -eq $intervalle) {
    Write-Output "Absence d’intervalle de sauvegarde"
    exit
}

if (Test-Path -PathType Leaf $path) {Write-Output "Fichier passé en argument"}
elseif (Test-Path -PathType Container $path) {Write-Output "Dossier passé en argument"}

if ($intervalle -lt 30) {
    Write-Output "Intervalle trop petit"
    exit
} else {
    Write-Output "La valeur de l’intervalle est $intervalle secondes"
}

$userPath = "./BackUp/"
while ($true) {
        Copy-Item -Path $path -Destination $userPath -Recurse
        Start-Sleep -Seconds $intervalle
}