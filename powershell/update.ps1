 Clear-Host
    Set-Service -Name WinRM -Status Running -PassThru
    Set-Service -Name wuauserv -StartupType Automatic
    net start bits
    net start wuauserv
    net start cryptSvc
    net start msiserver
    SC config wuauserv start= auto 
    SC config bits start= auto 
    SC config cryptsvc start= auto 
    SC config trustedinstaller start= auto
    Get-WindowsUpdate -MicrosoftUpdate
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

        Install-WindowsUpdate -MicrosoftUpdate

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
