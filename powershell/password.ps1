Clear-Host
$pass = @"

 _ __                                      _ 
| '_ \ __ _  ___ ___ _ __ __  ___  _ _  __| |
| .__// _` |(_-/(_-/ \ V  V // _ \| '_|/ _` |
|_|   \__/_|/__//__/  \_/\_/ \___/|_|  \__/_|
Github:github.com/suchsoak
BY: suchsok

"@

Write-Host $pass
$password = Read-Host "Put the passsword"
$way = Read-Host "Place the path"
$secureString = ConvertTo-SecureString -String "$password" -AsPlainText -Force
$secureString | ConvertFrom-SecureString | Set-Content -Path "$way"

if ($secureString){
    Write-Host "Password saved!"
}else {
    Write-Host "Had a Problem, verify the path!!"
}
catch{
    Write-Host "There was an error with the previous command. Please try again."
}
