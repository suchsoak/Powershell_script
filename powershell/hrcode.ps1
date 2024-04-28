 Clear-Host
    $hrcode = @"
     _  _  ___   ___   ___   ___   ___ 
    | || || _ \ / __| / _ \ |   \ | __|
    | __ ||   /| (__ | (_) || |) || _| 
    |_||_||_|_\ \___| \___/ |___/ |___|
    
    [1] Curl
    [2] QRCodeGenerator

    Github:github.com/suchsoak
    BY: suchsoak
"@
Write-Host
Write-Host $hrcode -ForegroundColor Red
Write-Host
$opt = Read-Host "Choose the option" 

switch ($opt) {

    1{
    
    Write-Host
    Write-Host $hrcode
    $hrcode = Read-Host "Put the link"
    Write-Host
    curl qrenco.de/$hrcode
    }2{

    Install-Module -Name QRCodeGenerator -Force
    Clear-Host
    Write-Host
    $link = Read-Host "Put the link"
    $Path = Read-Host "Put the path"
    New-QRCodeURI -URI $link -Width 15 -OutPath $path
    }

    }

if ( $hrcode )
{
    Write-Output ""
} else {
    Write-Host "Please enter a link."
}    
