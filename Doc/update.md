# Update

`Set-Service -Name WinRM -Status Running -PassThru`: This command sets the Windows Remote Management (WinRM) service to the running state. WinRM allows remote management and execution of PowerShell commands on a remote computer.

`Set-Service -Name wuauserv -StartupType Automatic`: This command sets the Windows Update service (wuauserv) to start automatically when the computer boots up. The Windows Update service is responsible for managing and installing Windows updates.

`net start bits`: This command starts the Background Intelligent Transfer Service (BITS). BITS is a Windows service that handles the transfer of files in the background, which is used by Windows Update to download updates.

`net start wuauserv`: This command starts the Windows Update service. As mentioned earlier, this service is responsible for managing and installing Windows updates.

`net start cryptSvc`: This command starts the Cryptographic Services. Cryptographic Services provide essential cryptographic functions for Windows, including certificate management and encryption.

`net start msiserver`: This command starts the Windows Installer service. The Windows Installer service is responsible for installing, modifying, and removing software on Windows systems.

`SC config wuauserv start= auto`: This command uses the SC (Service Control) command to configure the Windows Update service to start automatically.

`SC config bits start= auto`: This command configures the Background Intelligent Transfer Service (BITS) to start automatically.

`SC config cryptsvc start= auto`: This command configures the Cryptographic Services to start automatically.

`SC config trustedinstaller start= auto`: This command configures the TrustedInstaller service to start automatically. The TrustedInstaller service is responsible for installing Windows updates and managing system file permissions.

`Get-WindowsUpdate -MicrosoftUpdate`: This command uses the Get-WindowsUpdate cmdlet to check for available updates using the Microsoft Update service. This cmdlet retrieves information about available updates and their installation status.

Overall, this script ensures that the necessary services for `Windows Update` and system maintenance are properly configured and started. It also checks for available updates using the Microsoft Update service.

```sh

    "y"{
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
        exit
    }

```

| Script |  Links |
| ------ | ------ |
|  update.ps1 | https://github.com/suchsoak/Powershell_script/tree/main/powershell    
