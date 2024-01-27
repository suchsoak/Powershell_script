# Update

`Set-Service -Name WinRM -Status Running -PassThru`: This command sets the Windows Remote Management (WinRM) service to the running state. WinRM allows remote management and execution of PowerShell commands on a remote computer.

`Set-Service -Name wuauserv -StartupType Automatic`: This command sets the Windows Update service (wuauserv) to start automatically when the computer boots up. The Windows Update service is responsible for managing and installing Windows updates.

`net start bits`: This command starts the Background Intelligent Transfer Service (BITS). BITS is a Windows service that handles the transfer of files in the background, which is used by Windows Update to download updates.

`net start wuauserv`: This command starts the Windows Update service. As mentioned earlier, this service is responsible for managing and installing Windows updates.

`net start cryptSvc`: This command starts the Cryptographic Services. Cryptographic Services provide essential cryptographic functions for Windows, including certificate management and encryption.

`net start msiserver`: This command starts the Windows Installer service. The Windows Installer service is responsible for installing, modifying, and removing software on Windows systems.

` Get-WindowsUpdate`: This command uses the Get-WindowsUpdate cmdlet to check for available updates using the Microsoft Update service. This cmdlet retrieves information about available updates and their installation status.

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
        Install-Module PSWindowsUpdate
        Get-WindowsUpdate
        Install-WindowsUpdate
    }

    "n"{
        exit
    }

```
`"y" and "n"`: These are the options presented to the user. The script expects the user to input either "y" or "n" to proceed with the corresponding action.

`"$windows =@"" ... """`: This section defines a multi-line string variable called $windows that contains an ASCII art representation of the Windows logo. The logo will be displayed in the console using Write-Host later in the script.

`Write-Host $windows -ForegroundColor Blue`: This command displays the Windows logo stored in the $windows variable using Write-Host cmdlet. The -ForegroundColor parameter is set to "Blue" to display the logo in blue color.

`Install-Module PSWindowsUpdate    `: If the user enters "y", this command is executed. It uses the Install-WindowsUpdate cmdlet to initiate the installation of Windows updates using the Microsoft Update service.

`"n" { exit }`: If the user enters "n", this section is executed. The script simply exits, terminating the execution.

| Update |  Links |
| ------ | ------ |
|  Net start | https://answers.microsoft.com/en-us/windows/forum/all/learning-the-net-start-command/02dfe674-d1e9-4a6d-9d75-f7896a5462f6
|  Sc config | https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/sc-config
|  Get-WindowsUpdateLog | https://learn.microsoft.com/en-us/powershell/module/windowsupdate/get-windowsupdatelog?view=windowsserver2022-ps    
|  update.ps1 | https://github.com/suchsoak/Powershell_script/tree/main/powershell    


