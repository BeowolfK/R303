$ping = new-object System.Net.NetworkInformation.Ping
$adrr = Read-Host "Quel adresse IP vous voulez tester ? (X.X.X.X)"

$res = $ping.send("$adrr")
Write-host -NoNewline "Test pour la machine $ip : "
if ($res.Status -eq "Success") {
    Write-host "Success"
} else {
    Write-host "Failed"
}

$semi_adrr = Read-Host "Quel adresse IP vous voulez tester, que les 3 premiers octets? (X.X.X.**)"

for ($i = 1; $i -le 10; $i++) {
    $ip = "$semi_adrr.$i"
    if (Test-Connection -ComputerName "$ip" -Count 1 -Quiet) {
        write-host "La machine $ip est active"
    } else {
        write-host "La machine $ip est inactive"
    }
}