Clear-Host
    $res =@"

     ___           _                   ___       _        _   
    | _ \ ___  ___| |_  ___  _ _  ___ | _ \ ___ (_) _ _  | |_ 
    |   // -_)(_-/|  _|/ _ \| '_|/ -_)|  _// _ \| || ' \ |  _|
    |_|_\\___|/__/ \__|\___/|_|  \___||_|  \___/|_||_||_| \__|
    Github:github.com/suchsoak
    BY: suchsok

"@

Write-Host $res
$RestorePointName = "MyRestorePoint"
$Description = "My restore point description"
New-ComputerRestorePoint -RestorePointType APPLICATION_INSTALL -Description $Description -RestorePointName $RestorePointName
Get-ComputerRestorePoint -LastStatus
