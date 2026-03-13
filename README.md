# Powershell_script

<p align="center">
  <a href="https://github.com/suchsoak/Powershell_script/stargazers">
    <img src="https://img.shields.io/github/stars/suchsoak/Powershell_script?style=social" alt="GitHub stars">
  </a>
</p>

<p align="center">
<img src="https://github.com/suchsoak/Powershell_script/blob/main/img/Power-script.png" alt="Powershell.png">
</p>

PowerShell Script is where you have a lot of PowerShell script, to make your life easier.

>[!NOTE]
>I have to thank the fleschutz for his scrips. He inspired me to do this project. So thank you.
> https://github.com/fleschutz/PowerShell/tree/master

# Scripts

At the moment we have `17` scripts each with a function, as time goes by I will be adding more scripts. 

The documentation:

| Doc |  Links |
| ------ | ------ |
|  Scripts | https://github.com/suchsoak/Powershell_script/tree/main/Doc    

If you want to know more about the scripts, inside the `powershell` folder will contain the script file and also the other scripts separately

| Scripts |  Links |
| ------ | ------ |
|  Scripts | https://github.com/suchsoak/Powershell_script/tree/main/powershell    

# 📜 Scripts Overview

| #  | Script                                    | Description                                                                        | Usage                                              |
| -- | ----------------------------------------- | ---------------------------------------------------------------------------------- | -------------------------------------------------- |
| 1  | **WSL**                                   | Installs WSL 2 and Linux distributions (Ubuntu, Debian, etc.) on Windows.          | Easily manage Linux environments on Windows.       |
| 2  | **Firewall**                              | Adds rules to the Windows firewall.                                                | Protect and control network traffic.               |
| 3  | **Browser**                               | Installs browsers like Firefox, Brave, Chrome, and Opera GX.                       | Quickly install popular browsers.                  |
| 4  | **Drive Reset**                           | Resets computer drivers and runs verification with DISM.                           | Fix driver issues and OS integrity.                |
| 5  | **Netreset**                              | Resets TCP ports and system network configurations.                                | Quickly solve network problems.                    |
| 6  | **Disk Verification**                     | Verifies corrupted files (like `sfc /scannow`).                                    | Ensure file system integrity.                      |
| 7  | **Telssh**                                | Checks and installs OpenSSH and Telnet on Windows.                                 | Easily enable secure remote access.                |
| 8  | **Programming Language**                  | Installs languages like Python, Ruby, Go, Node.js, etc.                             | Quickly set up development environments.           |
| 9  | **IDE**                                   | Installs IDEs like VS Code, PyCharm, Atom, etc.                                     | Get your development environment ready.            |
| 10 | **Systeminfo**                            | Displays detailed system information (GPU, CPU, Wi-Fi, etc.).                      | Consult hardware and system data.                  |
| 11 | **Fileinfo**                              | Returns detailed information about a specific file.                                | Quickly analyze files.                             |
| 12 | **Restorepoint**                          | Creates a system restore point.                                                    | Protect yourself before critical changes.          |
| 13 | **Windows Update**                        | Updates Windows and attempts to fix update issues.                                 | Keep the system updated and secure.                |
| 14 | **Eventlog**                              | Displays system event logs according to the chosen quantity.                       | Monitor Windows events and failures.               |
| 15 | **Mpscan**                                | Runs security scans with Windows Defender.                                         | Analyze threats and vulnerabilities.               |
| 16 | **Password**                              | Saves passwords securely in files.                                                 | Manage passwords securely.                         |
| 17 | **QRCODE**                                | Generates QR Codes from links using Curl or PowerShell module.                     | Easily share links via QR Code.                  

# Usage

>[!IMPORTANT]
>Don't forget, from the `Get-ExecutionPolicy`
>
>`Unblock-File -Path .\script.ps1`

**You can usage the script.ps1**

```sh
   .\script.ps1
```

>[!TIP]
>Or you can use the scripts separately
>

```sh
.\wsl.ps1             # Manage WSL (Windows Subsystem for Linux)
.\firewall.ps1        # Configure firewall rules
.\browser.ps1         # Install or manage browsers
.\drivereset.ps1      # Reset drives
.\netreset.ps1        # Reset network settings
.\disk_verefication.ps1 # Verify disk integrity
.\telssh.ps1          # Telnet/SSH utilities
.\language.ps1        # Programming language setup
.\ide.ps1             # Launch or configure IDE
.\systeminfo.bat      # Display system information
.\restorepoint.ps1    # Create or manage restore points
.\fileinfo.ps1        # Get file information
.\eventlog.ps1        # View event logs
.\password.ps1        # Password management
.\qrcode.ps1          # Generate QR codes
```

 License & Copyright
-----------------------
This open source project is licensed under the `CC0-1.0 license.` All trademarks are the property of their respective owners.
