 Clear-Host
    $qrcode = @"
  ___  ____   ____ ___  ____  _____ 
 / _ \|  _ \ / ___/ _ \|  _ \| ____|
| | | | |_) | |  | | | | | | |  _|  
| |_| |  _ <| |__| |_| | |_| | |___ 
 \__\_\_| \_\\____\___/|____/|_____|
    
    [1] Curl
    [2] QRCodeGenerator

    Github:github.com/suchsoak
    BY: suchsoak
"@
Write-Host
Write-Host $qrcode -ForegroundColor Red
Write-Host
$opt = Read-Host "Choose the option" 

switch ($opt) {

    1{
    
    Write-Host
    Write-Host $qrcode
    $qrcode = Read-Host "Put the link"
    Write-Host
    curl qrenco.de/$qrcode
    }2{

    Install-Module -Name QRCodeGenerator -Force
    Clear-Host
    Write-Host
    $link = Read-Host "Put the link"
    $Path = Read-Host "Put the path"
    New-QRCodeURI -URI $link -Width 15 -OutPath $path
    }

    }

if ( $qrcode )
{
    Write-Output ""
} else {
    Write-Host "Please enter a link."
}    
