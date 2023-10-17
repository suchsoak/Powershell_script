$tx= @"
__      __ ___  _                        _  _ __  _   
\ \    / // __|| |          ___ __  _ _ (_)| '_ \| |_ 
 \ \/\/ / \__ \| |__       (_-// _|| '_|| || .__/|  _|
  \_/\_/  |___/|____|      /__/\__||_|  |_||_|    \__|

            Github: https://github.com/schsoak
            BY: ~#M?x
"@
Write-Host $tx
Start-Sleep -Seconds 2 $null

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
        $escolha = Read-Host "Choose the option to install:"

        switch ($escolha) {
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
    } while ($escolha -ne "6")


    }

    else {
        & dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
        & dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
        & wsl --set-default-version 2

    }


}
catch {
    Write-Error "Error "
}