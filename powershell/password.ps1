Clear-Host
$pass = @"

 _ __                                      _ 
| '_ \ __ _  ___ ___ _ __ __  ___  _ _  __| |
| .__// _` |(_-/(_-/ \ V  V // _ \| '_|/ _` |
|_|   \__/_|/__//__/  \_/\_/ \___/|_|  \__/_|
Github:github.com/suchsoak
BY: suchsok

"@

$password = Read-Host "Put a passoword"-AsSecureString
$way = Read-Host "Place the path"
$Encrypted = ConvertFrom-SecureString -SecureString $password -Key (1..16)
$Encrypted | Set-Content $way
$secureString = Get-Content $way | ConvertTo-SecureString -Key (1..16)

if ($secureString){
    Write-Host
    Write-Host "Encrypt file!!"
}else {
    Write-Host
    Write-Host "Had a Problem, verify the path!!"
}
catch{
    Write-Host "There was an error with the previous command. Please try again."
}
