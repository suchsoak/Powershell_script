```sh
    __  __  _ __  ___                 
    |  \/  || '_ \/ __| __  __ _  _ _  
    | |\/| || .__/\__ \/ _|/ _` || ' \ 
    |_|  |_||_|   |___/\__|\__/_||_||_|
    Github:github.com/suchsoak
    BY: suchsok
```

The script in question is written in PowerShell and aims to perform checks and executions related to computer security using Windows Defender.


The first part of the script displays information about the status of Windows Defender on the computer. 

It uses the `Get-MpComputerStatus` command to obtain information such as the age of the last `full scan `(FullScanAge), the computer ID (ComputerID), whether antivirus is enabled `(AntivirusEnabled)`, whether the Antimalware service is enabled (AMServiceEnabled), the date of the last antimalware signature update (AntispywareSignatureLastUpdated), whether antimalware is enabled (AntispywareEnabled), whether the AM service is enabled `(AMServiceEnabled)`, whether Ioav protection is enabled (IoavProtectionEnabled), the date of the last antivirus signature update `(AntivirusSignatureLastUpdated)`, and whether on-access protection is enabled (OnAccessProtectionEnabled) `[[1]]`.


Next, the script displays a menu for the user to choose between performing a full scan (Fullscan) or a quick scan (QuickScan). The menu is displayed using the Write-Host command, and the user's choice is read using the Read-Host command.

Depending on the chosen option, the script uses the `Start-MpScan` command to initiate the corresponding scan. If an error occurs during the execution of the command, the script displays an error message using the Write-Host command and the Exception.Message property of the exception object.

If the user chooses an invalid option, the script displays the message `"Invalid Option"` using the Write-Host command.

In summary, the script displays information about the status of `Windows Defender` and allows the user to initiate a full or quick scan of the system using Windows Defender.

| scrip | Link |
|-------|------|
|mpscan.ps1| https://github.com/suchsoak/Powershell_script/tree/main/powershell
