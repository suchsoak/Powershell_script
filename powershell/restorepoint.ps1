Clear-Host
$log =@"
 ___                   _    _          __ _ 
| __|__ __ ___  _ _  | |_ | |    ___ / _` |
| _| \ V // -_)| ' \ |  _|| |__ / _ \\__. |
|___| \_/ \___||_||_| \__||____|\___/|___/ 
Github:github.com/suchsoak
BY: suchsok

[1] 10    [5] 50    [9]  90
[2] 20    [6] 60    [10] 100
[3] 30    [7] 70    [11] 1000
[4] 40    [8] 80    [12] 10000
"@

Write-Host $log

$get = Read-Host "Put here"
switch ($get) {
    1{
        Clear-Host
        Get-EventLog -LogName System -Newest 10
     }
     2{
        Clear-Host
        Get-EventLog -LogName System -Newest 20
     }
     3{
        Clear-Host
        Get-EventLog -LogName System -Newest 30
     }
     4{
        Clear-Host
        Get-EventLog -LogName System -Newest 40
     }
     5{
        Clear-Host
        Get-EventLog -LogName System -Newest 50
     }
     6{
        Clear-Host
        Get-EventLog -LogName System -Newest 60
     }
     7{
        Clear-Host
        Get-EventLog -LogName System -Newest 70
     }
     8{
        Clear-Host
        Get-EventLog -LogName System -Newest 80
     }
     9{
        Clear-Host
        Get-EventLog -LogName System -Newest 90
     }
     10{
        Clear-Host
        Get-EventLog -LogName System -Newest 100
     }
     11{
        Clear-Host
        Get-EventLog -LogName System -Newest 1000
     }
     12{
        Clear-Host
        Get-EventLog -LogName System -Newest 10000
     }
    Default { Write-Host "Invalid Option" }
}
