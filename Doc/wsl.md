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
  wsl --install -d Debian
  wsl --install -d kali-linux
  wsl --install -d opensuse-leap-15.5
  wsl --install -d oraclelinux_9_1
```

# Opensuse and Oracle

## Opensuse Linux

For opensuse wsl the following are available

```sh
opensuse-leap-15.5
openSUSE-Tumbleweed
```
On the script

```sh
wsl --install -d opensuse-leap-15.5 
```
You can change

```sh
wsl --install -d opensuse-leap-<version>
```

## Oracle Linux

```sh
OracleLinux_7_9
OracleLinux_8_7
OracleLinux_9_1
```
On the script

```sh
   wsl --install -d oraclelinux_9_1
```
You Can Change
```sh
   wsl --install -d oraclelinux_<version>
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

| Wsl |  Links |
| ------ | ------ |
|  Wsl   | https://learn.microsoft.com/en-us/windows/wsl/install
|  Wsl Commands | https://github.com/MicrosoftDocs/WSL/blob/main/WSL/basic-commands.md
|  Ubuntu  |  https://ubuntu.com/wsl
|  Debian   | https://wiki.debian.org/InstallingDebianOn/Microsoft/Windows/SubsystemForLinux
|  Kali Linux | https://www.kali.org/docs/wsl/wsl-preparations/
| Arch Linux  | https://github.com/yuk7/ArchWSL
