# Firewall Rules
```sh

 ___  ___                           _  _ 
| __||_ _| _ _  ___  _ __ __  __ _ | || |
| _|  | | | '_|/ -_) \ V  V // _` || || |
|_|  |___||_|  \___|  \_/\_/ \__/_||_||_|

    Github: https://github.com/schsoak
    BY: ~#M?x
```

```sh
    Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True 
    Write-Host " [*] Block 22"
    Write-Host
    New-NetFirewallRule -DisplayName "'Block 22'" -Direction Inbound -Protocol TCP -LocalPort 22 -Action Block
    Write-Host
    Write-Host " [*] Block 23"
    New-NetFirewallRule -DisplayName "'Block 23'" -Direction Inbound -Protocol TCP -LocalPort 23 -Action Block
    Write-Host " [*] Block 80"
    write-host 
    New-NetFirewallRule -DisplayName "'Block 80'" -Direction Inbound -Protocol TCP -LocalPort 80 -Action Block
    Get-NetFirewallProfil

```

The provided code appears to be a PowerShell script that configures the Windows firewall to block specific inbound ports. Let me explain what each line of the code does:

Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True: This command enables the firewall for the Domain, Public, and Private profiles, ensuring that the firewall is active for all types of networks.

Write-Host " [*] Block 22": This line displays a message in the console indicating that port 22 will be blocked.

New-NetFirewallRule -DisplayName "'Block 22'" -Direction Inbound -Protocol TCP -LocalPort 22 -Action Block: This command creates a new firewall rule named "Block 22". The rule is applied to inbound traffic (-Direction Inbound) using the TCP protocol (-Protocol TCP) on the local port 22 (-LocalPort 22). The action defined for this rule is to block the traffic (-Action Block).

Write-Host " [*] Block 23": This line displays a message in the console indicating that port 23 will be blocked.

New-NetFirewallRule -DisplayName "'Block 23'" -Direction Inbound -Protocol TCP -LocalPort 23 -Action Block: This command creates a new firewall rule named "Block 23". The rule is applied to inbound traffic (-Direction Inbound) using the TCP protocol (-Protocol TCP) on the local port 23 (-LocalPort 23). The action defined for this rule is to block the traffic (-Action Block).

Write-Host " [*] Block 80": This line displays a message in the console indicating that port 80 will be blocked.

New-NetFirewallRule -DisplayName "'Block 80'" -Direction Inbound -Protocol TCP -LocalPort 80 -Action Block: This command creates a new firewall rule named "Block 80". The rule is applied to inbound traffic (-Direction Inbound) using the TCP protocol (-Protocol TCP) on the local port 80 (-LocalPort 80). The action defined for this rule is to block the traffic (-Action Block).

Get-NetFirewallProfile: This command retrieves the current firewall profile settings.

In summary, the script configures the Windows firewall to block inbound traffic on ports 22, 23, and 80 by creating specific firewall rules. This can be useful for restricting access to certain services or protocols on these ports.

Please note that running firewall scripts can impact network connectivity, so it's important to understand the implications before executing this type of code.
