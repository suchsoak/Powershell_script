    drives = @"
     ___        _                      ___                _   
    |   \  _ _ (_)__ __ ___  ___      | _ \ ___  ___ ___ | |_ 
    | |) || '_|| |\ V // -_)(_-/      |   // -_)(_-// -_)|  _|
    |___/ |_|  |_| \_/ \___|/__/      |_|_\\___|/__/\___| \__|
    Github: https://github.com/schsoak
    BY: ~#M?x   

"@

try {

    if($true){
        Write-Host "Drive Reset"
        dism /online /cleanup-image /scanhealth
        dism /online /cleanup-image /restorehealth
        pnputil /resetdrivers /force
        Write-Host
        Write-Host "Drives Reset done!"
        Write-Host 
        Write-Host "Now reboot your computer"

    }else{
        Write-Host
        Write-Host "Haven Problem"
        Write-Host
    }
    
}
catch {
    <#Do this if a terminating exception happens#>
    Write-Host "Haven Problem, maybe you dont start with administrator"
}
