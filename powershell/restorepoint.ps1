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
$RestorePointName = Read-Host "What is the name of your restorepoint"
Checkpoint-Computer -Description $RestorePointName -RestorePointType MODIFY_SETTINGS
