```sh
___   _      _                         _   __  _            _    _            
|   \ (_) ___| |__      __ __ ___  _ _ (_) / _|(_) __  __ _ | |_ (_) ___  _ _  
| |) || |(_-/| / /      \ V // -_)| '_|| ||  _|| |/ _|/ _` ||  _|| |/ _ \| ' \ 
|___/ |_|/__/|_\_\       \_/ \___||_|  |_||_|  |_|\__|\__/_| \__||_|\___/|_||_|
Github: https://github.com/schsoak
BY: ~#M?x   

```

The mentioned commands are used to check and fix issues in the Windows operating system. Here is an explanation of each command:

**Sfc /ScanNow**: The "sfc /ScanNow" command is used to check the integrity of system files in Windows. It checks if the system files are corrupted or missing and attempts to repair them automatically if possible. This command is useful when you suspect that a system file is causing issues in the operating system.

**dism /online /cleanup-image /scanhealth**: The "dism /online /cleanup-image /scanhealth" command is used to check the integrity of the Windows image. It checks if the Windows image is corrupted or has any issues. This command is useful for diagnosing and fixing issues related to the Windows image.

**dism /online /cleanup-image /restorehealth**: The "dism /online /cleanup-image /restorehealth" command is used to restore the integrity of the Windows image. It checks if the Windows image is corrupted and attempts to restore it using Windows source files. This command is useful when the Windows image is corrupted and needs to be repaired.

**dism /Online /Cleanup-Image /CheckHealth**: The "dism /Online /Cleanup-Image /CheckHealth" command is used to check the integrity of the Windows image without making any changes. It checks if the Windows image is corrupted or has any issues, but does not attempt to fix them automatically. This command is useful for verifying if the Windows image is in good condition before performing other repair operations.

**chkdsk**: The "chkdsk" command is used to check and fix errors in the file system of a disk. It checks the integrity of the hard disk and can fix bad sectors, file errors, and other disk-related issues. To execute the command, open the Command Prompt and type "chkdsk" followed by the drive letter you want to check, for example, "chkdsk C:".

> [!Note]
> These commands are useful for diagnosing and fixing issues in the Windows operating system.

## Commands

<ul>
<li>Sfc /ScanNow</li>
<li>dism /online /cleanup-image /scanhealth</li>
<li>dism /online /cleanup-image /restorehealth</li>
<li>dism /Online /Cleanup-Image /CheckHealth</li>
<li>chkdsk</li>
</ul>

| Commands |  Links |
| ------ | ------ |
|  Sfc /ScanNow  |  https://support.microsoft.com/en-us/topic/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system-files-79aa86cb-ca52-166a-92a3-966e85d4094e
|  Dism  |  https://learn.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14?view=windows-11
