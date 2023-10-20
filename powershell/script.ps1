Clear-Host
$tx= @"
 ___                                             _  _ __  _   
| _ \ ___  _ __ __  ___  _ _        ___ __  _ _ (_)| '_ \| |_ 
|  _// _ \ \ V  V // -_)| '_|      (_-// _|| '_|| || .__/|  _|
|_|  \___/  \_/\_/ \___||_|        /__/\__||_|  |_||_|    \__|

            Github: https://github.com/schsoak
            v:1.0.0
            BY: ~#M?x

            [1] Wsl             [2] Firewall_rules
            [3] Browser_Install [4] Drive Reset
"@

Write-Host $tx
Start-Sleep -Seconds 1 > $null
write-Host
$opt = Read-Host "Choose the option"

switch ($x) {

# Wsl script install

1{
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
    write-host "Wsl Config"
     dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
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
        Write-Host " [*] 1. Install Ubuntu        [2] Debian" -ForegroundColor Red
        Write-Host " [*] 3. Kali Linux            [3] Arch Linux" -ForegroundColor Green
        Write-Host " [*] 5. Install Everything    [6] No install" -ForegroundColor Blue
        Write-Host
        $opt = Read-Host "Choose the option to install:"

        switch ($opt) {
            1 {
                Write-Host "Ubuntu"
                wsl --install -d Ubuntu
                Write-Host "Ubuntu Installed"
                write-host 
                Start-Sleep -Seconds 2 > $null
                break
            }

            2 {Write-Host "Debian"
            wsl --install -d Debian
            Write-Host "Debian Installed"
            Write-Host
            break
             }
             3 {Write-Host "Kali"
             wsl --install -d Kali 
             Write-Host "Kali Linux Installed"
             Write-Host
             break
              }
              4 {Write-Host "Archlinux"
              if($false){
                git clone https://github.com/yuk7/ArchWSL.git

              }else {
                Write-Host "Git Install"
                Invoke-WebRequest -Uri "https://git-scm.com/download/win" -OutFile "$env:USERPROFILE\Downloads\GitInstaller.exe"
                Start-Process -Wait -FilePath "$env:USERPROFILE\Downloads\GitInstaller.exe"
                git clone https://github.com/yuk7/ArchWSL.git
                cd ./ArchWSL.git
                tar -xf Arch.tar.gz
              }
              Write-Host "Arch linux Installed"
              Write-Host
              break
               }
               5 {Write-Host "Everything"
               wsl --install -d ubuntu
               wsl --install -d Debian
               wsl --install -d Kali
               wsl --install -d ubuntu

               Write-Host "Kali Linux Installed"
               Write-Host
               break
                }
            6 {
                Write-Host "Exite"
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
    New-NetFirewallRule -DisplayName "'Block 23'" -Direction Inbound -Protocol TCP -LocalPort 23 -Action Block
    Write-Host " [*] Block 80"
    write-host 
    New-NetFirewallRule -DisplayName "'Block 80'" -Direction Inbound -Protocol TCP -LocalPort 80 -Action Block
    Get-NetFirewallProfil

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

"@
Write-Host $bs
Start-Sleep 3 > $null

try {
    Clear-Host

    $install= @"

    ___            _          _  _ 
   |_ _| _ _   ___| |_  __ _ | || |
    | | | ' \ (_-/|  _|/ _` || || |
   |___||_||_|/__/ \__|\__/_||_||_|  

    [*] 1. Brave Browser  [*] 2. Firefox      
    [*] 3. Chrome         [*] 4. All
             
"@
Write-Host $install
$opt = Read-Host "Choose the option to install:"


switch ($opt) {
    1{
        $brave = @"

         ___                      
        | _ ) _ _  __ _ __ __ ___ 
        | _ \| '_|/ _` |\ V // -_)
        |___/|_|  \__/_| \_/ \___|        


"@   
    Write-Host $brave
    if($true){
    winget install --id=Brave.Brave  -e
    Write-Host
    Write-Host "Brave Installed"


    }else{
        Write-Host "Warning"
    }}
    2{
    $Firefox = @"

     ___  _             __           
    | __|(_) _ _  ___  / _| ___ __ __
    | _| | || '_|/ -_)|  _|/ _ \\ \ /
    |_|  |_||_|  \___||_|  \___//_\_\

"@
    Write-Host $Firefox
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
    $chrom
    if($True){
        winget install --id=Google.Chrome  -e
        Write-Host
        Write-Host "Chrome Installed"
    }else {
        Write-Host "Have Problems"
    }

    }
    4{

$all = @"
     ___                                  
    | _ ) _ _  ___  _ __ __  ___ ___  _ _ 
    | _ \| '_|/ _ \ \ V  V /(_-// -_)| '_|
    |___/|_|  \___/  \_/\_/ /__/\___||_|  
    Github: https://github.com/schsoak
    BY: ~#M?x

"@
Write-Host $all

if($True){
    Write-Host "Brave"
    Start-Sleep 2 > $null
    winget install --id=BraveSoftware.BraveBrowser -e
    Clear-Host
    Write-Host "Firefox"
    Start-Sleep 2 > $null
    winget install --id=Mozilla.Firefox -e
    Clear-Host
    Write-Host "Chrome"
    Start-Sleep 2 > $null
    winget install --id=Google.Chrome -e
    Clear-Host
    Write-Host
    Write-Host "All browsers installed"
    }else {
            Write-Host
            Write-Host "Have Problems"
        }

    }

    Default {}
}

    exit 0
}
catch {
    
    exit 1
    
}

}

4{
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
    
}}
