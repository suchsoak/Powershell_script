Clear-Host
$ps= @"
 ___                                             _  _ __  _   
| _ \ ___  _ __ __  ___  _ _        ___ __  _ _ (_)| '_ \| |_ 
|  _// _ \ \ V  V // -_)| '_|      (_-// _|| '_|| || .__/|  _|
|_|  \___/  \_/\_/ \___||_|        /__/\__||_|  |_||_|    \__|

            Github: https://github.com/schsoak
            BY: suchsoak
            v:1.0.4

            [1] Wsl                     [9]  IDE
            [2] Firewall rules          [10] Systeminfo
            [3] Browser Install         [11] File information
            [4] Drive Reset             [12] RestorePoint
            [5] NetReset                [13] Windows update
            [6] Disk Verification       [14] EventLog
            [7] Telssh                  [15] MpScan
            [8] Programming language    [16] Password
"@

Write-Host $ps -ForegroundColor Blue
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
            BY: suchsok
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

2{
Clear-Host
$fi= @"

 ___  ___                           _  _ 
| __||_ _| _ _  ___  _ __ __  __ _ | || |
| _|  | | | '_|/ -_) \ V  V // _` || || |
|_|  |___||_|  \___|  \_/\_/ \__/_||_||_|

    Github: https://github.com/schsoak
    BY: suchsok

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
        Write-Host "Had a problem"
        write-host "Don't forget by Administrator"
    }
}

# Browsers

3{
Clear-Host
$bs = @"
___                                  
| _ ) _ _  ___  _ __ __  ___ ___  _ _ 
| _ \| '_|/ _ \ \ V  V /(_-// -_)| '_|
|___/|_|  \___/  \_/\_/ /__/\___||_|  
[!] Buy Me A Coffee: https://www.buymeacoffee.com/m100047r
Github: https://github.com/schsoak
BY: suchsok
"@
Write-Host $bs
Start-Sleep 2 > $null

try {
    Clear-Host

    $install= @"

    ___            _          _  _ 
   |_ _| _ _   ___| |_  __ _ | || |
    | | | ' \ (_-/|  _|/ _` || || |
   |___||_||_|/__/ \__|\__/_||_||_|  

    [*] 1. Brave   [*] 2. Firefox   
    [*] 3. Chrome  [*] 4. Opera GX
    [*] 5. All         
"@
Write-Host $install
Write-Host
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
        Write-Host "Something has gone wrong"
    }
    }
    3{
    Clear-Host
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
        Write-Host "Something has gone wrong"
    }

    }
    4{
        Clear-Host
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
            Write-Host "Something has gone wrong"
        }
        }
    5{
Clear-Host
$all = @"
     ___                                  
    | _ ) _ _  ___  _ __ __  ___ ___  _ _ 
    | _ \| '_|/ _ \ \ V  V /(_-// -_)| '_|
    |___/|_|  \___/  \_/\_/ /__/\___||_|  
    Github: https://github.com/schsoak
    BY: suchsok

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
            Write-Host "Something has gone wrong"
        }
    }
    Default {Write-Host "Invalid Option"}
}

}
catch {
    
        Write-Host "Something has gone wrong"    
}}

4{
Clear-Host
$drives = @"
     ___        _                      ___                _   
    |   \  _ _ (_)__ __ ___  ___      | _ \ ___  ___ ___ | |_ 
    | |) || '_|| |\ V // -_)(_-/      |   // -_)(_-// -_)|  _|
    |___/ |_|  |_| \_/ \___|/__/      |_|_\\___|/__/\___| \__|
    Github: https://github.com/schsoak
    BY: suchsok   
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
        Write-Host " ⚠ Had a problem ⚠ "
        Write-Host
    }
    
}
catch {
    Write-Host " ⚠ Had a problem, maybe you dont start with administrator ⚠ "
}}

5{
Clear-Host
$netreset = @"
 _  _       _                       _   
| \| | ___ | |_  _ _  ___  ___ ___ | |_ 
| .  |/ -_)|  _|| '_|/ -_)(_-// -_)|  _|
|_|\_|\___| \__||_|  \___|/__/\___| \__|

Github: https://github.com/schsoak
BY: suchsok   

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
    Write-Host
    Write-Host "Verification completed!"
    Write-Host
    Start-Sleep 2 >$null
}else {
    Write-Host " ⚠ Had a problem, maybe you dont start with administrator ⚠ "
}}

6{
Clear-Host
$hd = @"
___   _      _                         _   __  _            _    _            
|   \ (_) ___| |__      __ __ ___  _ _ (_) / _|(_) __  __ _ | |_ (_) ___  _ _  
| |) || |(_-/| / /      \ V // -_)| '_|| ||  _|| |/ _|/ _` ||  _|| |/ _ \| ' \ 
|___/ |_|/__/|_\_\       \_/ \___||_|  |_||_|  |_|\__|\__/_| \__||_|\___/|_||_|
Github: https://github.com/schsoak
BY: suchsok   
"@

Write-Host $hd
Write-Host
if ($true){
    Write-Host "[*] Sfc /ScanNow 1/6" -ForegroundColor Red
    Start-Sleep 2 > $null
    Sfc /ScanNow
    Clear-Host
    Write-Host "[*] dism /online /cleanup-image /scanhealth 2/6" -ForegroundColor Red
    Start-Sleep 2 > $null
    dism /online /cleanup-image /scanhealth
    Clear-Host
    Write-Host "[*] dism /online /cleanup-image /restorehealth 3/6" -ForegroundColor Red
    Start-Sleep 2 > $null
    dism /online /cleanup-image /restorehealth
    Clear-Host
    Write-Host "[*] dism /online /cleanup-image /CheckHealth 4/6" -ForegroundColor Red
    Start-Sleep 2 > $null
    dism /Online /Cleanup-Image /CheckHealth
    Clear-Host
    Write-Host "[*] Chkdsk 5/6" -ForegroundColor Green
    Start-Sleep 2 > $null
    chkdsk
    Clear-Host
    Write-Host "[*] del temp files 6/6" -ForegroundColor Green
    cd %temp%
    del *
    Write-Host "Verification completed!"
}else {
    Write-Host
    Write-Host " ⚠ Verification failed ⚠"
}}

7{
    Clear-Host
    $ssh = @"

    |          |              |     
    __|   _ \  |   __|   __|  __ \  
    |     __/  | \__ \ \__ \  | | | 
   \__| \___| _| ____/ ____/ _| |_|                                        
    Github: https://github.com/schsoak
    BY: suchsok                 
"@

Write-host $ssh

Start-Sleep 4 > $null

if ($False){
    $SSHStatus = Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
}else {
    Write-Host "Installing OpenSSH..."
    Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
    Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
    Write-Host
    Clear-Host
    Write-Host "OpenSSH is installed" -ForegroundColor Red
    Start-Sleep 4 > $null
}
if ($true){
    $SSHStatus = Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
    Start-Service sshd
    Set-Service -Name sshd -StartupType 'Automatic'
    Write-Host
    Write-Host
    Clear-Host
    
    else {
        Clear-Host
        Write-Host "Openssh is probably not available"
        Start-Sleep 3 > $null
    }
if ($false){
    $TelnetStatus = Get-WindowsCapability -Online | ? Name -like 'TelnetClient*'
}else {
    Write-Host "Installing Telnet..."
    Start-Sleep 3 > $null
    Add-WindowsCapability -Online -Name TelnetClient~~~~0.0.1.0
    Start-Sleep 2 > $null
    Write-Host
    Write-Host "Telnet is already installed." -ForegroundColor Red
    Write-Host
}}}

8{
Clear-Host
$programming = @"
         _              __ _              __ _      
        | | __ _  _ _  / _` | _  _  __ _ / _` | ___ 
        | |/ _` || ' \ \__. || || |/ _` |\__. |/ -_)
        |_|\__/_||_||_||___/  \_._|\__/_||___/ \___|
        Github: https://github.com/schsoak
        Buy ME A Coffe: 
        BY: suchsok  

        [1] Python    [5] Swift
        [2] Ruby      [6] GO
        [3] GCC (C)   [7] Kotlin
        [4] Nodejs    [8] ALL
"@
Write-Host $programming
$language = Read-Host "Choose the option"

switch ($language) {
1{
    Clear-Host
    $python =@"

    ___ __   __ _____  _  _   ___   _  _ 
    | _ \\ \ / /|_   _|| || | / _ \ | \| |
    |  _/ \   /   | |  | __ || (_) || .  |
    |_|    |_|    |_|  |_||_| \___/ |_|\_|
    
    
"@
    Write-Host $python -ForegroundColor Blue
    Start-Sleep 2 > $null
    Write-Host
    winget install --id=Python.Python.3.12  -e
    Clear-Host
    pip -V -ForegroundColor Blue
    Write-Host
    Write-Host "Python Installed"
    Start-Sleep 
}

2{
    Clear-Host
    $ruby = @"

    ___  _   _  ___ __   __
    | _ \| | | || _ )\ \ / /
    |   /| |_| || _ \ \   / 
    |_|_\ \___/ |___/  |_|  
    
"@
    Write-Host $ruby -ForegroundColor Red
    Start-Sleep 2 > $null
    #Ruby on Windows
    winget install --id=RubyInstallerTeam.Ruby.3.2  -e
    Write-Host
    if ($true) {
        Ruby -v
        Write-Host "Ruby Installed"
        Start-Sleep 2 >$null
    }else {
        Write-Host "Ruby Not Installed"
        Write-Host
        Write-Host "Sorry there was really problem"
    }
} 

3{
Clear-Host
$gcc = @"
___   ___   ___ 
/ __| / __| / __|
| (_ || (__ | (__ 
\___| \___| \___|

"@
    Write-Host $gcc
    Start-Sleep 2 > $null
    #MSYS2
    winget install --id=MSYS2.MSYS2  -e
    Write-Host
    Write-Host "msys2 is installed"
}

4{
    Clear-Host
    $nodejs = @"
    _  _   ___   ___   ___     _  ___ 
    | \| | / _ \ |   \ | __| _ | |/ __|
    | .  || (_) || |) || _| | || |\__ \
    |_|\_| \___/ |___/ |___| \__/ |___/
    
    
"@ 
    Write-Host $nodejs -ForegroundColor Green
    Start-Sleep 2 > $null
    winget install --id=OpenJS.NodeJS  -e
    Write-Host
    Write-Host "nodejs is installed"
}
5{
    Clear-Host
    $swift=@"

    ___ __      __ ___  ___  _____ 
    / __|\ \    / /|_ _|| __||_   _|
    \__ \ \ \/\/ /  | | | _|   | |  
    |___/  \_/\_/  |___||_|    |_|  
    
    
"@

Write-Host $swift -ForegroundColor Yellow
Write-Host
Start-Sleep 2 >$null
winget install --id=Swift.Toolchain  -e
Write-Host
Write-Host "swift is installed"
}
6{
    Clear-Host
    $go=@"

    ___   ___  
    / __| / _ \ 
   | (_ || (_) |
    \___| \___/ 
   
"@

Write-Host $go -ForegroundColor Cyan
Write-Host
Start-Sleep 2 >$null
winget install --id=GoLang.Go  -e
Write-Host
Write-Host "Go installed"
}

7{
Clear-Host
$kotlin=@"

_  __  ___   _____  _     ___  _  _ 
| |/ / / _ \ |_   _|| |   |_ _|| \| |
|   < | (_) |  | |  | |__  | | | .  |
|_|\_\ \___/   |_|  |____||___||_|\_|
        
"@
    
    Write-Host $kotlin -ForegroundColor Magenta
    Write-Host
    Start-Sleep 2 >$null
    winget install --id=JetBrains.Kotlin.Complier  -e
    Write-Host
    Write-Host "Kotlin installed"
}

8{
    Write-Host "Python [1/7]" -ForegroundColor Blue
    Start-Sleep 2 > $null
    winget install --id=Python.Python.3.12  -e
    Write-Host "Ruby [2/7]" -ForegroundColor Red
    Start-Sleep 2 > $null
    winget install --id=RubyInstallerTeam.Ruby.3.2  -e
    Write-Host "GCC [3/7]"
    Start-Sleep 2 > $null
    winget install --id=MSYS2.MSYS2  -e
    Write-Host "Nodejs [4/7]" -ForegroundColor Green
    Start-Sleep 2 > $null
    winget install --id=OpenJS.NodeJS -e
    Write-Host "Swith [5/7]" -ForegroundColor Yellow
    Start-Sleep 2 > $null
    winget install --id=Swift.Toolchain  -e
    Write-Host "GO [6/7]" -ForegroundColor Cyan
    Start-Sleep 2 > $null
    winget install --id=GoLang.Go  -e
    Write-Host "Kotlin [7/7]" -ForegroundColor Magenta
    Start-Sleep 2 > $null
    winget install --id=JetBrains.Kotlin.Complier  -e
    
}

default{
    Write-Host
    Write-Host "Please enter a valid number." -ForegroundColor Red
}}}
9{
    Clear-Host
    $IDE = @"

    ___  ___   ___ 
    |_ _||   \ | __|
     | | | |) || _| 
    |___||___/ |___|
    Buy ME A Coffe: https://www.buymeacoffee.com/m100047r
    Github: https://github.com/schsoak
    BY: suchsok

    [1] Visual Code Studio          [4] Atom                 [7] Notepadd++
    [2] PyCharm Community Edition   [5] Android Studio       [8] Rubymine
    [3] Sublime Text                [6] Arduino IDE          [9] ALL
"@
    Write-Host $IDE 
    Start-Sleep 2 > $null
    Write-Host
    $ide1 = Read-Host "Choose the option"

switch ($ide1) {
    1{
        Clear-Host
        $visual = @"
        ___   ___   ___   ___ 
        / __| / _ \ |   \ | __|
       | (__ | (_) || |) || _| 
        \___| \___/ |___/ |___|
        Github: github.com/suchsoak
        BY: suchsok
"@
        Write-Host $visual -ForegroundColor Blue
        winget install --id=Microsoft.VisualStudioCode  -e
        Write-Host "Code Installed"
    }
    2{
        Clear-Host
        $pycharm = @"

        ___ __   __  ___  _  _  ___  ___  __  __ 
        | _ \\ \ / / / __|| || |/   \| _ \|  \/  |
        |  _/ \   / | (__ | __ || - ||   /| |\/| |
        |_|    |_|   \___||_||_||_|_||_|_\|_|  |_|
        Github: github.com/suchsoak
        BY: suchsok
"@
        Write-Host $pycharm -ForegroundColor Green
        Start-Sleep 2 > $null
        winget install --id=JetBrains.PyCharm.Community  -e
    }catch{
        Write-Host "Error"
    }
    3{
        Clear-Host
        $sublime = @"
         ___  _   _  ___  _     ___  __  __  ___        _____  ___ __  __ _____ 
        / __|| | | || _ )| |   |_ _||  \/  || __|      |_   _|| __|\ \/ /|_   _|
        \__ \| |_| || _ \| |__  | | | |\/| || _|         | |  | _|  >  <   | |  
        |___/ \___/ |___/|____||___||_|  |_||___|        |_|  |___|/_/\_\  |_|  
        Github: github.com/suchsoak
        BY: suchsok
"@
        Write-Host $sublime -ForegroundColor Yellow
        Start-Sleep 2 >$null
        winget install --id=SublimeHQ.SublimeText.4  -e
        Write-Host 
        Write-Host "SUBLIME TEXT Installed"
    }
    
    4{
        Clear-Host
        $Atom = @"
         ___  _               
        /   \| |_  ___  _ __  
        | - ||  _|/ _ \| '  \ 
        |_|_| \__|\___/|_|_|_|
        Github: github.com/suchsoak
        BY: suchsok
"@
        Write-Host $Atom -ForegroundColor Green
        Start-Sleep 2 > $null
        Write-Host
        winget install --id=GitHub.Atom  -e
        Write-Host
        Write-Host "Atom Is Installed"
    }else{
        Write-Host "Error"
    }
    5{
        Clear-Host
        $android = @"
        _______  ______   ______   _______  _______  ___  ______   
        |   _   ||   _  \ |   _  \ |   _   \|   _   ||   ||   _  \  
        |.  1   ||.  |   ||.  |   \|.  l   /|.  |   ||.  ||.  |   \ 
        |.  _   ||.  |   ||.  |    \.  _   1|.  |   ||.  ||.  |    \
        |:  |   ||:  |   ||:  1    /:  |   ||:  1   ||:  ||:  1    /
        |::.|:. ||::.|   ||::.. . /|::.|:. ||::.. . ||::.||::.. . / 
        `--- ---'`--- ---'`------' `--- ---'`-------'`---'`------'  
        Github: github.com/suchsoak
        BY: suchsok
"@
        Write-Host $android -ForegroundColor Green
        Write-Host
        Start-Sleep 2 > $null
        winget install --id=Google.AndroidStudio  -e
        Write-Host
        Write-Host "Android Studio Is Installed"
    }
    6{
        Clear-Host
        $arduino =@"
        ___  ___  ___   _   _  ___  _  _   ___  
        /   \| _ \|   \ | | | ||_ _|| \| | / _ \ 
        | - ||   /| |) || |_| | | | | .  || (_) |
        |_|_||_|_\|___/  \___/ |___||_|\_| \___/ 
        
      Github: github.com/suchsoak
      BY: suchsok

"@   
        Write-Host $arduino -ForegroundColor Blue
        Start-Sleep 2 > $null
        if($true){
        winget install --id=ArduinoSA.IDE.stable  -e
        Write-Host 
        Write-Host "Arduino Is Installed"
        }else {
            Write-Host "Error"
        }
    }
    7{
        Clear-Host
        $notepad = @"
         _  _   ___   _____  ___  ___  ___  ___    _| |_    _| |_  
        | \| | / _ \ |_   _|| __|| _ \/   \|   \  |_   _|  |_   _| 
        | .  || (_) |  | |  | _| |  _/| - || |) |   |_|      |_|   
        |_|\_| \___/   |_|  |___||_|  |_|_||___/                   
        
    Github: github.com/suchsoak
    BY: suchsok         
"@
        Write-Host $notepad -ForegroundColor Green
        Start-Sleep 2 >$null
     if($true){
        winget install --id=Notepad++.Notepad++  -e
        Write-Host
        Write-Host "Notepad++ Is Installed" -ForegroundColor Green
        
     }else {
        Write-Host "Error"
     }
    }
    8{
        Clear-Host
        $rubymine = @"
         ___  _   _  ___ __   __ __  __  ___  _  _  ___ 
        | _ \| | | || _ )\ \ / /|  \/  ||_ _|| \| || __|
        |   /| |_| || _ \ \   / | |\/| | | | | .  || _| 
        |_|_\ \___/ |___/  |_|  |_|  |_||___||_|\_||___|
        Github:github.com/suchsoak
        BY:suchsok
"@

        Write-Host $rubymine -ForegroundColor Red
        Start-Sleep 2 > $null
        Write-Host
        winget install --id=JetBrains.RubyMine  -e
    }
    9{
        if ($true) {
        Clear-Host
        $ides = @"                                                 
        ___  ___   ___  ___ 
        |_ _||   \ | __|/ __|
         | | | |) || _| \__ \
        |___||___/ |___||___/          
        Github:github.com/suchsoak
        BY:suchsok
"@
        Write-Host $ides
        Write-Host
        Start-Sleep 2 >$null
        Write-Host "CODE [1/8]"
        winget install --id=Microsoft.VisualStudioCode  -e
        Write-Host
        Write-Host "Code Is Installed" -ForegroundColor Blue
        Start-Sleep 2 >$null
        Clear-Host
        Write-Host 
        Write-Host " Pycharm [2/8]"
        winget install --id=JetBrains.PyCharm.Community  -e
        Write-Host
        Write-Host "Pycharm Is Installed" -ForegroundColor Green
        Start-Sleep 2 >$null
        Clear-Host
        Write-Host " Sublime [3/8]"
        winget install --id=SublimeHQ.SublimeText.4  -e
        Write-Host
        Write-Host "Sublime text Is Installed" -ForegroundColor Yellow
        Start-Sleep 2 >$null
        Clear-Host
        Write-Host " Atom [4/8]"
        Start-Sleep 2 > $null
        winget install --id=GitHub.Atom  -e
        Write-Host
        Write-Host "Atom Is Installed" -ForegroundColor Green
        Start-Sleep 2 >$null
        Clear-Host
        Write-Host " Android Studio [5/8]"
        Start-Sleep 2 > $null
        winget install --id=Google.AndroidStudio  -e
        Write-Host
        Write-Host "Android Stuido Is Installed" -ForegroundColor Green
        Start-Sleep 2 >$null
        Clear-Host
        Write-Host " Arduino [6/8]"
        Start-Sleep 2 > $null
        winget install --id=ArduinoSA.IDE.stable  -e
        Write-Host
        Write-Host "Arduino Is Installed" -ForegroundColor Blue
        Start-Sleep 2 >$null
        Clear-Host
        Write-Host " Notepad++ [7/8]"
        Start-Sleep 2 > $null
        winget install --id=Notepad++.Notepad++  -e
        Write-Host
        Write-Host "Notepad++ Is Installed" -ForegroundColor Green
        Start-Sleep 2 >$null
        Clear-Host
        Write-Host " Rubymine [8/8]"
        Start-Sleep 1 > $null
        winget install --id=JetBrains.RubyMine  -e
        Write-Host
        Write-Host "Rubymine Is Installed" -ForegroundColor Green
        Start-Sleep 2 >$null
        Write-Host
        Clear-Host
        Write-Host "All IDE Is Installed"
    }else {
        Write-Host "Error"
    }
}}


}

10{

#!/bin/bash
#bashscript

Clear-Host
$bash = @"                

o=====ooooooo=ooooooooooo==
===========+===============
=====....................+o
===o: :=:..+===========. +o
====..=o+.  ~+oo====oo+ ~==
===: ~oo==+.  ~+====oo~ +o=
===. =oo=o=+.  .====o+ .===
=o+ ~oo=+:.  .:=oo===: :===
oo. +=:.  .:~~:~~+oo=..====
o+ .=+..~+==.....:==: :o===
o+....................=o===
oo=============+====+=o====
o==o=ooooooo====oooo=======
       
Github:github.com/suchsoak
BY: suchsok

"@
Start-Sleep 2 >$null
Write-Host $bash
Write-Host
.\systeminfo.bat
    
}

11{
Clear-Host
$locked =@"

+------------------------------+
|=========+~........~+=========|
|=======+..~:++==++:~..+=======|
|======~ ~+==========+~ ~======|
|=====+ ~==============~ +=====|
|=====~ :o=============: ~o====|
|====+. ~++++++++++++++~ .+====|
|==+..~~~~~~~~~~~~~~~~~~~~..+==|
|==+ ~====================~ +==|
|==+ ~=======+~.~~+=======~ +==|
|==+ ~======: .++. +======~ +==|
|==+ ~======+..:~..+======~ +==|
|==+ ~========+  :========~ +==|
|==+ .=========~~=========~ +==|
|===~ ~+=======++======++~ ~===|
|====:~..................~+====|
+------------------------------+
Github:github.com/suchsoak
BY: suchsok

"@
Write-Host $locked -ForegroundColor Red
$sleep = Start-Sleep 1 > $null
$sleep
Write-Host
Write-Host "Example: C:example/file"
Write-Host  
$filePath = Read-Host "Place the path"

if ($FALSE){
    $filePath
    Write-Host "The file is not found!" -ForegroundColor Red

} 

else {
Clear-Host
$fileInfo = Get-ChildItem -Path $filePath
$hash = Get-FileHash -Path $filePath -Algorithm SHA256

Write-Host "File name: " $fileInfo.Name
Write-Host "Full form: " $fileInfo.FullName
Write-Host "size: " $fileInfo.Length "bytes"
Write-Host "Last modification: " $fileInfo.LastWriteTime
Write-Host "Extensions: " $fileInfo.Extension
Write-Host "Hash (SHA256): " $hash.Hash
}
} catch{
    Write-Host "Error"
}

12{
    Clear-Host
    $res =@"

     ___           _                   ___       _        _   
    | _ \ ___  ___| |_  ___  _ _  ___ | _ \ ___ (_) _ _  | |_ 
    |   // -_)(_-/|  _|/ _ \| '_|/ -_)|  _// _ \| || ' \ |  _|
    |_|_\\___|/__/ \__|\___/|_|  \___||_|  \___/|_||_||_| \__|
    Github:github.com/suchsoak
    BY: suchsok

"@

Write-Host $res
$RestorePointName = Read-Host "What is the name of your restorepoint"
Checkpoint-Computer -Description $RestorePointName -RestorePointType MODIFY_SETTINGS

}

13{
    Clear-Host
    Set-Service -Name WinRM -Status Running -PassThru
    Set-Service -Name wuauserv -StartupType Automatic
    net stop wuauserv
    net stop bits
    net stop cryptsvc
    net stop trustedinstaller
    net stop appidsvc
    net start wuauserv
    net start bits
    net start cryptsvc
    net stop trustedinstaller
    net start appidsvc
    Write-Host
    $update = Read-Host "Do you want Update? (y/n)"

switch ($update) {

    "y"{
        Clear-Host
        $windows =@"

        |oooooooooooooooooooooooooooo:o|
        |oooooooooooooo:o::::::~~~~~~~:|
        |o~:~~~~ ~   ~o~~ ~~~~~~~~~~~~o|
        |:           :o~~~~~~~~~~~~~ ~:|
        |:           :o~~~~~~~~~~~~~~~:|
        |:           :o~~~~ ~ ~~~~~ ~~o|
        |:           :o~~~~~~~~~~~~~~~o|
        |o::::~::::::oo::o::o:oo:::oo:o|
        |o ~ ~ ~     oo~:::::::::::::~o|
        |:           :o~:~:~::~:~:~:~~o|
        |: ~   ~ ~   :o::~:~:::::~::::o|
        |o         ~ :o:~::::~:~:::~:~o|
        |o:~~~~~~  ~ :o::~~:~::~:~:~::o|
        |oooooooooooooo:ooo:o::::::~:~o|
        |oooooooooooooooooooooooooooooo|

"@
        Write-Host $windows -ForegroundColor Blue

        Install-Module PSWindowsUpdate
        Get-WindowsUpdate
        Install-WindowsUpdate
    }

    "n"{
        Clear-Host
        exit
    }

} default{
    Write-Host "Please enter 'y' or 'n'"
} catch{
    Write-Host "Error"
}

}

14{
Clear-Host
$log =@"
 ___                   _    _          __ _ 
| __|__ __ ___  _ _  | |_ | |    ___ / _` |
| _| \ V // -_)| ' \ |  _|| |__ / _ \\__. |
|___| \_/ \___||_||_| \__||____|\___/|___/ 
Github:github.com/suchsoak
BY: suchsok

[1] 10    [5] 50    [9]  90
[2] 20    [6] 60    [10] 100
[3] 30    [7] 70    [11] 1000
[4] 40    [8] 80    [12] 10000
"@

Write-Host $log

#Get-EventLog -List

$get = Read-Host "Put here"
switch ($get) {
    1{
        Clear-Host
        Get-EventLog -LogName System -Newest 10
     }
     2{
        Clear-Host
        Get-EventLog -LogName System -Newest 20
     }
     3{
        Clear-Host
        Get-EventLog -LogName System -Newest 30
     }
     4{
        Clear-Host
        Get-EventLog -LogName System -Newest 40
     }
     5{
        Clear-Host
        Get-EventLog -LogName System -Newest 50
     }
     6{
        Clear-Host
        Get-EventLog -LogName System -Newest 60
     }
     7{
        Clear-Host
        Get-EventLog -LogName System -Newest 70
     }
     8{
        Clear-Host
        Get-EventLog -LogName System -Newest 80
     }
     9{
        Clear-Host
        Get-EventLog -LogName System -Newest 90
     }
     10{
        Clear-Host
        Get-EventLog -LogName System -Newest 100
     }
     11{
        Clear-Host
        Get-EventLog -LogName System -Newest 1000
     }
     12{
        Clear-Host
        Get-EventLog -LogName System -Newest 10000
     }
    Default { Write-Host "Invalid Option" }
}

}

15{
    Clear-Host
    $mp = @"

    __  __  _ __  ___                 
    |  \/  || '_ \/ __| __  __ _  _ _  
    | |\/| || .__/\__ \/ _|/ _` || ' \ 
    |_|  |_||_|   |___/\__|\__/_||_||_|
    Github:github.com/suchsoak
    BY: suchsok
"@ 

Write-Host $mp
Get-MpComputerStatus | findstr "FullScanAge"
Get-MpComputerStatus | findstr "ComputerID"
Get-MpComputerStatus | findstr "AntivirusEnabled"
Get-MpComputerStatus | findstr "AMServiceEnabled"
Get-MpComputerStatus | findstr "Get-MpComputerStatus"
Get-MpComputerStatus | findstr "AntispywareSignatureLastUpdated"
Get-MpComputerStatus | findstr "AntispywareEnabled"
Get-MpComputerStatus | findstr "AMServiceEnabled "
Get-MpComputerStatus | findstr "IoavProtectionEnabled"
Get-MpComputerStatus | findstr "AntivirusSignatureLastUpdated"
Get-MpComputerStatus | findstr "OnAccessProtectionEnabled"

$pscan = @"

___  ___   ___  ___  _  _ 
| _ \/ __| / __|/   \| \| |
|  _/\__ \| (__ | - || .  |
|_|  |___/ \___||_|_||_|\_|

[1] Fullscan    [2] Quickscan
"@

Write-Host $pscan
Write-Host
$scan = Read-Host "Fullscan o QuickScan"

switch ($scan) {
    1{ 
        try {
            Start-MpScan -ScanType FullScan
        } catch {
            Write-Host "An error occurred: $($_.Exception.Message)"
        }
     }
     2{
        try {
            Start-MpScan -ScanType QuickScan
        } catch {
            Write-Host "An error occurred: $($_.Exception.Message)"
        }
     }

    Default { Write-Host "Invalid Option" }
}   

}

16{
Clear-Host
$pass = @"

 _ __                                      _ 
| '_ \ __ _  ___ ___ _ __ __  ___  _ _  __| |
| .__// _` |(_-/(_-/ \ V  V // _ \| '_|/ _` |
|_|   \__/_|/__//__/  \_/\_/ \___/|_|  \__/_|
Github:github.com/suchsoak
BY: suchsok

"@

Write-Host $pass

$password = Read-Host "Put a passoword"-AsSecureString
$way = Read-Host "Place the path"
$Encrypted = ConvertFrom-SecureString -SecureString $password -Key (1..16)
$Encrypted | Set-Content $way
$secureString = Get-Content $way | ConvertTo-SecureString -Key (1..16)

if ($secureString){
    Write-Host
    Write-Host "Encrypt file!!!"
}else {
    Write-Host
    Write-Host "Had a Problem, verify the path!!"
}
}

catch{
    Write-Host "There was an error with the previous command. Please try again."
}

default{
        Write-Host
        Write-Host "Please enter a valid number." -ForegroundColor Red
    }catch{
        Write-Host "Error"
}}
