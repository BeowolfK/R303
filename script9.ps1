$username = Read-Host "Entrez votre nom d'utilisateur "
$pinput = Read-Host -AsSecureString "Entrez votre mot de passe "
$password = ConvertTo-SecureString -AsPlainText $pinput -Force
New-LocalUser -Name $username -Password $password
Get-LocalUser -Name $username | Select-Object *
