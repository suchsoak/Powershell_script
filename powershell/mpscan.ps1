Clear-Host
    $mp = @"

    __  __  _ __  ___                 
    |  \/  || '_ \/ __| __  __ _  _ _  
    | |\/| || .__/\__ \/ _|/ _` || ' \ 
    |_|  |_||_|   |___/\__|\__/_||_||_|
    Github:github.com/suchsoak
    BY: suchsok
"@ 

Write-Host $mp
Get-MpComputerStatus | findstr "FullScanAge"
Get-MpComputerStatus | findstr "ComputerID"
Get-MpComputerStatus | findstr "AntivirusEnabled"
Get-MpComputerStatus | findstr "AMServiceEnabled"
Get-MpComputerStatus | findstr "Get-MpComputerStatus"
Get-MpComputerStatus | findstr "AntispywareSignatureLastUpdated"
Get-MpComputerStatus | findstr "AntispywareEnabled"
Get-MpComputerStatus | findstr "AMServiceEnabled "
Get-MpComputerStatus | findstr "IoavProtectionEnabled"
Get-MpComputerStatus | findstr "AntivirusSignatureLastUpdated"
Get-MpComputerStatus | findstr "OnAccessProtectionEnabled"

$pscan = @"

___  ___   ___  ___  _  _ 
| _ \/ __| / __|/   \| \| |
|  _/\__ \| (__ | - || .  |
|_|  |___/ \___||_|_||_|\_|

[1] Fullscan    [2] Quickscan
"@

Write-Host $pscan

$scan = Read-Host "Fullscan o QuickScan"

switch ($scan) {
    1{ 
        try {
            Start-MpScan -ScanType FullScan
        } catch {
            Write-Host "An error occurred: $($_.Exception.Message)"
        }
     }
     2{
        try {
            Start-MpScan -ScanType QuickScan
        } catch {
            Write-Host "An error occurred: $($_.Exception.Message)"
        }
     }

    Default { Write-Host "Invalid Option" }
}   
