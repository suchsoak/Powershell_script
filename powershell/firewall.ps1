   $fi= @"

 ___  ___                           _  _ 
| __||_ _| _ _  ___  _ __ __  __ _ | || |
| _|  | | | '_|/ -_) \ V  V // _` || || |
|_|  |___||_|  \___|  \_/\_/ \__/_||_||_|

    Github: https://github.com/schsoak
    BY: ~#M?x

"@

Write-Host $fi

if ($true){
    Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True 
    Write-Host " [*] Block 22"
    Write-Host
    New-NetFirewallRule -DisplayName "'Block 22'" -Direction Inbound -Protocol TCP -LocalPort 22 -Action Block
    Write-Host
    Write-Host " [*] Block 23"
    Write-Host
    New-NetFirewallRule -DisplayName "'Block 23'" -Direction Inbound -Protocol TCP -LocalPort 23 -Action Block
    Write-Host " [*] Block 80"
    write-host 
    New-NetFirewallRule -DisplayName "'Block 80'" -Direction Inbound -Protocol TCP -LocalPort 80 -Action Block
    }else {
        Write-Host "Haven Problem"
        write-host "Don't forget by Administrator"
    }
