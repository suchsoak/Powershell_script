
  ssh = @"

    |          |              |     
    __|   _ \  |   __|   __|  __ \  
    |     __/  | \__ \ \__ \  | | | 
   \__| \___| _| ____/ ____/ _| |_|                                        
    Github: https://github.com/schsoak
    BY: ~#M?x                 
"@

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
