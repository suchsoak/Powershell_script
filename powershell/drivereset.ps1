    $drives = @"
     ___        _                      ___                _   
    |   \  _ _ (_)__ __ ___  ___      | _ \ ___  ___ ___ | |_ 
    | |) || '_|| |\ V // -_)(_-/      |   // -_)(_-// -_)|  _|
    |___/ |_|  |_| \_/ \___|/__/      |_|_\\___|/__/\___| \__|
    Github: https://github.com/schsoak
    BY: ~#M?x   

"@
    Write-Host $drives
try {

    if($true){
        Write-Host "Drive Reset"
        dism /online /cleanup-image /scanhealth
        dism /online /cleanup-image /restorehealth
        Write-Host "Drive Scanner" -ForegroundColor Magenta
        Write-Host
        pnputil /scan-devices 
        Write-Host
        Write-Host "Restart all devices"
        pnputil /resetdrivers /force
        Write-Host
        Write-Host "Drives Reset done!" -ForegroundColor Cyan
        Write-Host 
        Write-Host "Now reboot your computer" -ForegroundColor Cyan

    }else{
        Write-Host
        Write-Host " ⚠ Haven Problem ⚠ "
        Write-Host
    }
    
}
catch {
    <#Do this if a terminating exception happens#>
    Write-Host " ⚠ Haven Problem, maybe you dont start with administrator ⚠ "
}
