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
