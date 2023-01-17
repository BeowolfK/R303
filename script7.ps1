if ($args.Count -eq 0) {
        $file = Read-Host "Entrez le nom du fichier/dossier que vous voulez compresser "
} else {
    $file = $args[0]
}

if (!(Test-Path "Archives")) { New-Item -ItemType Directory -Path "Archives"}

Compress-Archive -Path $file -DestinationPath "./Archives/$($file).zip"