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
    $update = Read-Host "Do you want Update?(y/n)"

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
