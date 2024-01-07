```sh
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

```

The provided script is a PowerShell script that displays a log and allows the user to choose the number of recent events they want to retrieve from the System event log. Here is an explanation of the script:

`Write-Host $log`: This line is referencing a variable $log, which is not defined in the provided script. It seems like there might be missing code or a variable declaration elsewhere in the script.

`Get-EventLog -LogName System -Newest 5`: This command retrieves the 5 most recent events from the System event log using the Get-EventLog cmdlet. The -LogName parameter specifies the log to retrieve events from, and the -Newest parameter specifies the number of events to retrieve.

`$get = Read-Host "Put here"`: This line prompts the user to input a value and stores it in the variable $get using the Read-Host cmdlet. The user's input will determine the number of events to retrieve from the System event log.

`switch ($get) { ... }`: This is a switch statement that evaluates the value stored in the $get variable and performs different actions based on the input.

Each case in the switch statement (e.g., 1, 2, 3, etc.) corresponds to a different option for the user to choose from. Each case executes a Get-EventLog command with a different value for the -Newest parameter, retrieving a different number of events from the System event log.

`Default { Write-Host "Invalid Option" }`: If the user enters a value that does not match any of the defined cases, this default case is executed. It simply displays the message "Invalid Option" using Write-Host.

In summary, this script displays a log (assuming the $log variable is defined elsewhere) and allows the user to choose the number of recent events they want to retrieve from the System event log. The script uses a switch statement to execute different Get-EventLog commands based on the user's input.

| Script |  Links |
| ------ | ------ |
|  eventlog.ps1 | https://github.com/suchsoak/Powershell_script/blob/main/powershell/eventlog.ps1
