$clear
$tx= @"
___                                             _  _ __  _   
| _ \ ___  _ __ __  ___  _ _        ___ __  _ _ (_)| '_ \| |_ 
|  _// _ \ \ V  V // -_)| '_|      (_-// _|| '_|| || .__/|  _|
|_|  \___/  \_/\_/ \___||_|        /__/\__||_|  |_||_|    \__|

            Github: https://github.com/schsoak
            v:1.0.0
            BY: ~#M?x

            [1] Wsl       [3] Security
            [2] Firewall  [4]  
"@

Write-Host $tx
Start-Sleep -Seconds 1 > $null
write-Host
$opt = Read-Host "Choose the option to install:"

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

try {

    if($false) {

        wsl --install
    }else {
    write-host 
    write-host "Wsl Config"
    & dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
    & dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
    & wsl --install
    & wsl --set-default-version 2
        
    }
    
    if($true){
    Write-Host "Wsl install"
    wsl --install
    write-host 
    Clear-Host
    write-host "Wsl Config"
    & dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
    & dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
    & wsl --set-default-version 2

    Write-Host "Wsl installed"
    Start-Sleep -Seconds 2 > $null
    Clear-Host
    
    do{
        Write-Host "::::::::::::::::::::::::::::::::::::::::::::"
        Write-Host ":: [*] 1. Install Ubuntu"
        Write-Host ":: [*] 2. Install Debian"
        Write-Host ":: [*] 3. Install Kali Linux"
        Write-Host ":: [*] 4. Install Archlinux"
        Write-Host ":: [*] 5. Install Everything"
        Write-Host ":: [*] 6. No install"
        Write-Host "::::::::::::::::::::::::::::::::::::::::::::"
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
        
        & dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
        & dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
        & wsl --set-default-version 2

    }
}
catch {
    Write-Error "Error"
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

try{


    if ($true){
    &Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True 
    Write-Host " [*] Block 22"
    Write-Host
    &New-NetFirewallRule -DisplayName "'Block 22'" -Direction Inbound -Protocol TCP -LocalPort 22 -Action Block
    Write-Host
    Write-Host " [*] Block 23"
    &New-NetFirewallRule -DisplayName "'Block 23'" -Direction Inbound -Protocol TCP -LocalPort 23 -Action Block
    Write-Host " [*] Block 80"
    write-host 
    &New-NetFirewallRule -DisplayName "'Block 80'" -Direction Inbound -Protocol TCP -LocalPort 80 -Action Block
    &Get-NetFirewallProfil

    }else {
        Write-Host "Haven Problem"
        write-host "Administrator"
    }

} catch {
    Write-Host "Haven Problem"
}

   }
}
