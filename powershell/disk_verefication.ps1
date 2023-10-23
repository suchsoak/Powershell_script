Clear-Host
$hd = @"

___   _      _                         _   __  _            _    _            
|   \ (_) ___| |__      __ __ ___  _ _ (_) / _|(_) __  __ _ | |_ (_) ___  _ _  
| |) || |(_-/| / /      \ V // -_)| '_|| ||  _|| |/ _|/ _` ||  _|| |/ _ \| ' \ 
|___/ |_|/__/|_\_\       \_/ \___||_|  |_||_|  |_|\__|\__/_| \__||_|\___/|_||_|
Github: https://github.com/schsoak
BY: ~#M?x   
"@

Write-Host $hd

if ($true){
    Write-Host "[*] Sfc /ScanNow 1/4"
    Start-Sleep 2 > $null
    Sfc /ScanNow
    Clear-Host
    Write-Host "[*] dism /online /cleanup-image /scanhealth 2/5"
    Start-Sleep 2 > $null
    dism /online /cleanup-image /scanhealth
    Clear-Host
    Write-Host "[*] dism /online /cleanup-image /restorehealth 3/5"
    Start-Sleep 2 > $null
    dism /online /cleanup-image /restorehealth
    Clear-Host
    Write-Host "[*] dism /online /cleanup-image /restorehealth 4/5"
    Start-Sleep 2 > $null
    dism /Online /Cleanup-Image /CheckHealth
    Clear-Host
    Write-Host "[*] Chkdsk 5/5"
    Start-Sleep 2 > $null
    chkdsk
    Clear-Host
    Write-Host "✔ Verification completed!"
}else {
    Write-Host
    Write-Host " ⚠ Verification failed"
}}}
