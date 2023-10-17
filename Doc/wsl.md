# Wsl Script

```sh
__      __ ___  _                        _  _ __  _   
\ \    / // __|| |          ___ __  _ _ (_)| '_ \| |_ 
 \ \/\/ / \__ \| |__       (_-// _|| '_|| || .__/|  _|
  \_/\_/  |___/|____|      /__/\__||_|  |_||_|    \__|

            Github: https://github.com/schsoak
            BY: ~#M?x
```

The wsl script will install the wsl and outhers linux terminal.


# The script

First of all the script will check if you have WSL to be able to install

```sh

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
```

If you already have the wsl, the script will go as promised

```sh

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


```

# The install of linux

Depending on the option you put in, it will install linux as normal

```sh
  wsl --install -d ubuntu
  wsl --install -d debian
  wsl --install -d Kali 
```

# Arch wsl install 

For arch linux the process is a bit more complex, it requires you to have git, if you are not going to download manually using a zip file.

```sh

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
```

It will install ubuntu on the wsl

| Wsl |  Links |
| ------ | ------ |
|  Wsl   | https://learn.microsoft.com/en-us/windows/wsl/install
|  Ubuntu  |  https://ubuntu.com/wsl
|  Debian   | https://wiki.debian.org/InstallingDebianOn/Microsoft/Windows/SubsystemForLinux
|  Kali Linux | https://www.kali.org/docs/wsl/wsl-preparations/
| Arch Linux  | https://github.com/yuk7/ArchWSL
