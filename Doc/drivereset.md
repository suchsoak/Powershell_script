```sh
 ___        _                      ___                _   
|   \  _ _ (_)__ __ ___  ___      | _ \ ___  ___ ___ | |_ 
| |) || '_|| |\ V // -_)(_-/      |   // -_)(_-// -_)|  _|
|___/ |_|  |_| \_/ \___|/__/      |_|_\\___|/__/\___| \__|
Github: https://github.com/schsoak
BY: ~#M?x   

```
```sh
  dism /online /cleanup-image /scanhealth
  dism /online /cleanup-image /restorehealth
  pnputil /scan-devices 
```

When you run the commands **"dism /online /cleanup-image /scanhealth"** and **"dism /online /cleanup-image /restorehealth"** in Windows, you are using the DISM (Deployment Image Servicing and Management) tool to check and repair the integrity of the operating system image.

The command **"dism /online /cleanup-image /scanhealth"** checks the integrity of the online operating system image. It scans for any corruption or issues in the system image and reports the results.

The command **"dism /online /cleanup-image /restorehealth"** is used to repair the online operating system image. It uses either Windows Update or a Windows installation source to restore any corrupted or missing files in the system image.

These commands can be helpful when you are experiencing integrity or corruption issues in the Windows operating system. They help identify and fix problems that may be causing errors or system malfunctions.

As for the command **"pnputil /resetdrivers /force"**, it is used to reset device drivers in Windows. The "pnputil" command is a command-line tool that allows you to manage device drivers in the operating system.

By running **"pnputil /resetdrivers /force"**, you are instructing the operating system to reset all device drivers to their default state. This can be useful when you are experiencing issues with specific device drivers and want to restore them to their initial configuration.

Remember that these commands should be executed with administrator privileges and may require a system reboot for the changes to take effect.

| Commands |  Links |
| ------ | ------ |
|  Dism | https://www.itechguides.com/dism-exe-online-cleanup-image-restorehealth-what-it-is-and-how-to-use/
|  Dism (Windows) | https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/repair-a-windows-image?view=windows-11
|  Dism (windows) | https://learn.microsoft.com/en-us/troubleshoot/windows-server/deployment/fix-windows-update-errors
|  Pnputil | https://learn.microsoft.com/en-us/windows-hardware/drivers/devtest/pnputil-command-syntax
