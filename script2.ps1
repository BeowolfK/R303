$username = Read-Host "Entrez votre nom d'utilisateur"
$password = Read-Host -AsSecureString "Entrez votre mot de passe"
$password = [Runtime.InteropServices.Marshal]::PtrToStringAuto([Runtime.InteropServices.Marshal]::SecureStringToBSTR($password))
Write-Host "Le nom d'utilisateur que vous avez choisi est : $username"
Write-Host "Et le mot de passe qui correspond : $password"