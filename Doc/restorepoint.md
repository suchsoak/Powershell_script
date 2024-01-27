# RestorePoint

```sh
    ___           _                   ___       _        _   
    | _ \ ___  ___| |_  ___  _ _  ___ | _ \ ___ (_) _ _  | |_ 
    |   // -_)(_-/|  _|/ _ \| '_|/ -_)|  _// _ \| || ' \ |  _|
    |_|_\\___|/__/ \__|\___/|_|  \___||_|  \___/|_||_||_| \__|
    Github:github.com/suchsoak
    BY: suchsok
```

This script will make a restore point on the system

```sh
$RestorePointName = Read-Host "What is the name of your restorepoint"
Checkpoint-Computer -Description $RestorePointName -RestorePointType MODIFY_SETTINGS
```

The provided script creates a new restore point on the computer using PowerShell. A restore point is an instant snapshot of the operating system's state and computer files at a specific moment. It allows you to restore the system to that specific state if any issues occur in the future.

**Here is a step-by-step explanation of what the script does:**

The second line defines a variable named $Description and assigns it the value `"My restore point description"`. This variable will be used to provide a description for the restore point.

The third line calls the New-ComputerRestorePoint cmdlet to create a new restore point. It accepts various parameters to customize the restore point. In this case, the following parameters are used:

`-Description`: Specifies the description of the restore point using the value of the `$Description variable`.

**-RestorePointName $RestorePointName**: Specifies the name of the restore point using the value of the `$RestorePointName variable`.

Therefore, the script creates a new restore point with the name "MyRestorePoint" and the description "My restore point description" after the installation of an application.

### You can use others restorepoint

```sh
APPLICATION_INSTALL
APPLICATION_UNINSTALL
CANCELLED_OPERATION
DEVICE_DRIVER_INSTALL
MODIFY_SETTINGS
```

| script |  Links |
| ------ | ------ |
|  restorepoint.ps1 | https://github.com/suchsoak/Powershell_script/blob/main/powershell/restorepoint.ps1

