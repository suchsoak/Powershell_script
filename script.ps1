Clear-Host
$ps= @"
 ___                                             _  _ __  _   
| _ \ ___  _ __ __  ___  _ _        ___ __  _ _ (_)| '_ \| |_ 
|  _// _ \ \ V  V // -_)| '_|      (_-// _|| '_|| || .__/|  _|
|_|  \___/  \_/\_/ \___||_|        /__/\__||_|  |_||_|    \__|

            Github: https://github.com/schsoak
            v:1.0.2
            BY: ~#M?x
    [1] Wsl             [2] Firewall rules [5] NetReset          [7] Telssh
    [3] Browser Install [4] Drive Reset    [6] Disk Verification 
"@

Write-Host $ps
Start-Sleep -Seconds 1 > $null
write-Host
$opt = Read-Host "Choose the option"

switch ($opt) {

# Wsl script install

1{
Clear-Host
$wsl= @"
__      __ ___  _                        _  _ __  _   
\ \    / // __|| |          ___ __  _ _ (_)| '_ \| |_ 
 \ \/\/ / \__ \| |__       (_-// _|| '_|| || .__/|  _|
  \_/\_/  |___/|____|      /__/\__||_|  |_||_|    \__|

            Github: https://github.com/schsoak
            BY: ~#M?x
"@
Write-Host $wsl
Start-Sleep -Seconds 2 > $null

if($true){
    Write-Host "Wsl install"
    wsl --install
    write-host 
    Clear-Host
    Write-host "Windows Subsystem for linux"
    dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
    Write-Host
    Write-Host "Virtual Machine platform"
    dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
    wsl --set-default-version 2
    Write-Host "Wsl installed"
    Start-Sleep -Seconds 2 > $null
    Clear-Host
    
    do{

        $install= @"

         ___            _          _  _ 
        |_ _| _ _   ___| |_  __ _ | || |
         | | | ' \ (_-/|  _|/ _` || || |
        |___||_||_|/__/ \__|\__/_||_||_|        
"@
        Write-Host $install
        write-host 
        Write-Host " [*] 1. Ubuntu                [*] 2. Debian" -ForegroundColor Red
        Write-Host " [*] 3. Kali Linux            [*] 4. Arch Linux " -ForegroundColor Blue
        Write-Host " [*] 5. Opensuse              [*] 6. Oracle " -ForegroundColor Magenta
        Write-Host " [*] 7. Everything            [*] 8. No install    " -ForegroundColor Green
        Write-Host
        $opt = Read-Host "Choose the option to install"

        switch ($opt) {
            1 {
                Write-Host
                Write-Host "Ubuntu"
                wsl --install -d Ubuntu
                Write-Host
                Write-Host "Ubuntu Installed" -ForegroundColor Yellow
                write-host 
                Start-Sleep -Seconds 2 > $null
                break
            }

            2 {Write-Host "Debian"
            wsl --install -d Debian
            Write-Host
            Write-Host "Debian Installed" -ForegroundColor Red
            Write-Host
            break
             }
             3 {Write-Host "Kali"
             wsl --install -d kali-linux 
             Write-Host "Kali Linux Installed" -ForegroundColor Blue
             Write-Host
             break
              }
              4 {Write-Host "Archlinux" -ForegroundColor Blue
              if($true){
                Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All
                DISM /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V
                Clear-Host
                Write-Host
                curl -O arch.zip https://github.com/yuk7/ArchWSL/releases/download/22.10.16.0/Arch.zip
                .\arch.zip

              }else{

              }
               }
               5 {Write-Host "Opensuse"
               wsl --install -d opensuse-leap-15.5 
               Write-Host
               Write-Host "OpenSuse Installed" -ForegroundColor Green
               Write-Host
               break
                }
                6 {Write-Host "Oracle"
                wsl --install -d oraclelinux_9_1
                Write-Host
                Write-Host "Oracle Installed" -ForegroundColor Green
                Write-Host
                break
                 }
               7 {
                write-host 
                Write-Host "Everything"
               wsl --install -d ubuntu
               wsl --install -d Debian
               wsl --install -d kali-linux
               wsl --install -d opensuse-leap-15.5
               wsl --install -d oraclelinux_9_1
                Write-Host
                Start-Sleep 2 > $null
                Clear-Host
               Write-Host "Everything Installed" -ForegroundColor Blue
               Write-Host
               break
                }
            8 {
                Write-Host "Exit"
                Start-Sleep -Seconds 1 > $null
                exit
                break
            }
            default {
                Write-Host "Invaled Option."
            }
        }
    } while ($opt -ne "6")
    }

    else {
        
         dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
         dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
         wsl --set-default-version 2
    }

}

# Firewall rule
2{

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
}

# Browsers

3{

$bs = @"
___                                  
| _ ) _ _  ___  _ __ __  ___ ___  _ _ 
| _ \| '_|/ _ \ \ V  V /(_-// -_)| '_|
|___/|_|  \___/  \_/\_/ /__/\___||_|  
Github: https://github.com/schsoak
BY: ~#M?x
[!] Buy Me A Coffee: https://www.buymeacoffee.com/m100047r
"@
Write-Host $bs
Start-Sleep 5 > $null

try {
    Clear-Host

    $install= @"

    ___            _          _  _ 
   |_ _| _ _   ___| |_  __ _ | || |
    | | | ' \ (_-/|  _|/ _` || || |
   |___||_||_|/__/ \__|\__/_||_||_|  

    [*] 1. Brave   [*] 2. Firefox   [*] 5. All
    [*] 3. Chrome  [*] 4. Opera GX
             
"@
Write-Host $install
$opt = Read-Host "Choose the option to install"


switch ($opt) {
    1{
        Clear-Host
        $brave = @"

         ___                      
        | _ ) _ _  __ _ __ __ ___ 
        | _ \| '_|/ _` |\ V // -_)
        |___/|_|  \__/_| \_/ \___|        


"@   
    Write-Host $brave -ForegroundColor Red
    if($true){
    winget install --id=Brave.Brave  -e
    Write-Host
    Write-Host "Brave Installed"


    }else{
        Write-Host "Warning"
    }}
    2{
    Clear-Host
    $Firefox = @"

     ___  _             __           
    | __|(_) _ _  ___  / _| ___ __ __
    | _| | || '_|/ -_)|  _|/ _ \\ \ /
    |_|  |_||_|  \___||_|  \___//_\_\

"@
    Write-Host $Firefox -ForegroundColor Red
    if($true){
    winget install --id=Mozilla.Firefox  -e
    }else {
        Write-Host "Have Problems"
    }
    }
    3{
    $chrom = @"
    ___  _                          
    / __|| |_   _ _  ___  _ __   ___ 
   | (__ |   \ | '_|/ _ \| '  \ / -_)
    \___||_||_||_|  \___/|_|_|_|\___|

"@
    Write-Host $chrom
    if($True){
        winget install --id=Google.Chrome  -e
        Write-Host
        Write-Host "Chrome Installed"
    }else {
        Write-Host "Have Problems"
    }

    }
    4{
        $opreagx = @"
        ___   ___  ___  ___  ___         ___ __  __
        / _ \ | _ \| __|| _ \/   \       / __|\ \/ /
       | (_) ||  _/| _| |   /| - |      | (_ | >  < 
        \___/ |_|  |___||_|_\|_|_|       \___|/_/\_\       
    
"@
        Write-Host $opreagx
        if($True){
            winget install --id=Google.Chrome  -e
            Write-Host
            Write-Host "Opera GX Installed"
        }else {
            Write-Host "Have Problems"
        }
    
        }
    5{

$all = @"
     ___                                  
    | _ ) _ _  ___  _ __ __  ___ ___  _ _ 
    | _ \| '_|/ _ \ \ V  V /(_-// -_)| '_|
    |___/|_|  \___/  \_/\_/ /__/\___||_|  
    Github: https://github.com/schsoak
    BY: ~#M?x

"@
Write-Host $all

if($False){
    Write-Host
    Write-Host "Brave" -ForegroundColor Red
    Write-Host
    Start-Sleep 2 > $null
    winget install --id=BraveSoftware.BraveBrowser -e
    Clear-Host
    Write-Host "Firefox"  -ForegroundColor Yellow
    Start-Sleep 2 > $null
    winget install --id=Mozilla.Firefox -e
    Clear-Host
    Write-Host "Chrome" -ForegroundColor White
    Start-Sleep 2 > $null
    winget install --id=Google.Chrome -e
    Clear-Host
    Write-Host
    write-host "Opera GX" -ForegroundColor Red
    Write-Host
    Start-Sleep 2 > $null
    winget install --id=Opera.OperaGX  -e
    Write-Host
    Write-Host "All browsers installed"
    }else {
            Write-Host
            Write-Host "Have Problems"
        }

    }

    Default {}
}

}
catch {
    
        Write-Host "Have Problems"    
}

}

4{
    Clear-Host
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
}}

5{
Clear-Host
$netreset = @"
 _  _       _                       _   
| \| | ___ | |_  _ _  ___  ___ ___ | |_ 
| .  |/ -_)|  _|| '_|/ -_)(_-// -_)|  _|
|_|\_|\___| \__||_|  \___|/__/\___| \__|

Github: https://github.com/schsoak
BY: ~#M?x   

"@

Write-Host $netreset

if ($true){
    Write-Host "Netsh"
    Start-Sleep -Seconds 2 > $null
    netsh winsock reset all
    netsh int 6to4 reset all
    netsh int ipv4 reset all
    netsh int ipv6 reset all
    netsh int httpstunnel reset all
    netsh int isatap reset all
    netsh int portproxy reset all
    netsh int tcp reset all
    netsh int teredo reset all
    netsh int ip reset
    netsh interface reset all
    Clear-Host
    Write-Host
    Write-Host "Verification completed!"
    Write-Host

}else {
    Write-Host " ⚠ Haven Problem, maybe you dont start with administrator ⚠ "
}

   
}

6{
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
    Write-Host "Verification completed!"
}else {
    Write-Host
    Write-Host " ⚠ Verification failed"
}}

7{

    ssh = @"

    |          |              |     
    __|   _ \  |   __|   __|  __ \  
    |     __/  | \__ \ \__ \  | | | 
   \__| \___| _| ____/ ____/ _| |_|                                        
    Github: https://github.com/schsoak
    BY: ~#M?x                 
"@

if ($False){
    $SSHStatus = Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
}else {
    Write-Host "Installing OpenSSH..."
    Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
    Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
    Write-Host
    Clear-Host
    Write-Host "OpenSSH is installed" -ForegroundColor Red
    Start-Sleep 3 > $null
}
if ($true){
    $SSHStatus = Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
    Start-Service sshd
    Set-Service -Name sshd -StartupType 'Automatic'
    Write-Host
    Write-Host
    Clear-Host
    else {
        Write-Host "Openssh is probably not available"
    }
if ($false){
    $TelnetStatus = Get-WindowsCapability -Online | ? Name -like 'TelnetClient*'
}else {
    Write-Host "Installing Telnet..."
    Add-WindowsCapability -Online -Name TelnetClient~~~~0.0.1.0
    Write-Host
    Clear-Host
    Write-Host "Telnet is already installed." -ForegroundColor Red
}}}}
