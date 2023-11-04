```sh
      |         |               |     
    __|   _ \  |   __|   __|  __ \  
    |     __/  | \__ \ \__ \  | | | 
   \__| \___| _| ____/ ____/ _| |_|                                        
    Github: https://github.com/schsoak
    BY: ~#M?x      
```

The provided script is a **PowerShell** script that installs **OpenSSH** and **Telnet** on a **Windows system**, depending on the values of the boolean variables $False and $True.

## OpenSSH Installation

If the $False variable is true, the script checks if OpenSSH is already installed on the system using the Get-WindowsCapability command. If OpenSSH is installed, the $SSHStatus variable is updated with the OpenSSH information. Otherwise, the script installs OpenSSH using the Add-WindowsCapability command to add the server and client capabilities of OpenSSH. It then clears the screen, displays a message stating that OpenSSH has been installed, and waits for 3 seconds before continuing.

## OpenSSH Configuration
If the $True variable is true, the script again checks if OpenSSH is installed using the Get-WindowsCapability command. It then starts the sshd service using the Start-Service command and sets the startup type of the service to 'Automatic' using the Set-Service command. It then clears the screen and displays an empty message before continuing.

## OpenSSH Verification
If the $True variable is false, the script displays a message stating that OpenSSH is probably not available.

## Telnet Installation
If the $False variable is true, the script checks if Telnet is already installed on the system using the Get-WindowsCapability command. If Telnet is installed, the script displays a message stating that Telnet is already installed. Otherwise, the script installs Telnet using the Add-WindowsCapability command and displays a message stating that Telnet has been installed.

## Telnet Issues
If the $False variable is false, the script displays a message stating that there are problems with Telnet.

The logic of the script is to check if OpenSSH and Telnet are installed on the system and, depending on the result, install or display appropriate messages. The script uses PowerShell commands to perform these tasks and displays informative messages during the process.

```sh
if ($False){
    $SSHStatus = Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
}else {
    Write-Host "Installing OpenSSH..."
    Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0
    Add-WindowsCapability -Online -Name OpenSSH.Client~~~~0.0.1.0
    Write-Host
    Clear-Host
    Write-Host "OpenSSH is installed" -ForegroundColor Red
    Start-Sleep 3 > $null
}
if ($true){
    $SSHStatus = Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
    Start-Service sshd
    Set-Service -Name sshd -StartupType 'Automatic'
    Write-Host
    Write-Host
    Clear-Host
    else {
        Write-Host "Openssh is probably not available"
    }
if ($false){
    $TelnetStatus = Get-WindowsCapability -Online | ? Name -like 'TelnetClient*'
}else {
    Write-Host "Installing Telnet..."
    Add-WindowsCapability -Online -Name TelnetClient~~~~0.0.1.0
    Write-Host
    Clear-Host
    Write-Host "Telnet is already installed." -ForegroundColor Red
}
```

| Services |  Links |
| ------ | ------ |
|  SSH | https://www.ssh.com/academy/ssh
|  Openssh | https://learn.microsoft.com/en-us/windows-server/administration/openssh/openssh_install_firstuse?tabs=gui
|  Telnet | https://www.lifewire.com/what-is-telnet-2626026
|  Telnet Windows | https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/telnet
