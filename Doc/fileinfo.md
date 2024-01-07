```sh
+------------------------------+
|=========+~........~+=========|
|=======+..~:++==++:~..+=======|
|======~ ~+==========+~ ~======|
|=====+ ~==============~ +=====|
|=====~ :o=============: ~o====|
|====+. ~++++++++++++++~ .+====|
|==+..~~~~~~~~~~~~~~~~~~~~..+==|
|==+ ~====================~ +==|
|==+ ~=======+~.~~+=======~ +==|
|==+ ~======: .++. +======~ +==|
|==+ ~======+..:~..+======~ +==|
|==+ ~========+  :========~ +==|
|==+ .=========~~=========~ +==|
|===~ ~+=======++======++~ ~===|
|====:~..................~+====|
+------------------------------+
Github:github.com/suchsoak
BY: suchsok
```
`Clear-Host`: This command clears the PowerShell console screen.

`$locked`: This variable stores a multi-line string that represents a locked padlock ASCII art. It is displayed in red color using the Write-Host command.

`$sleep`: This variable is assigned the result of the Start-Sleep command, which pauses the script execution for 1 second. The output of the command is redirected to $null to suppress any output.

`Write-Host`: This command displays the content of the $locked variable, which is the ASCII art representing the locked padlock.

`Write-Hostv: This command displays the text "Example: C:example/file" to provide an example of how to input the file path.

`$filePath`: This variable is assigned the value entered by the user using the Read-Host command. The user is prompted to enter the file path.

`if ($FALSE)`: This is an if statement that checks if the condition $FALSE is true. Since $FALSE is always false, the code block following this condition will not be executed.

`$filePath`: This line simply outputs the value of the $filePath variable.

`Write-Host`: This command displays the message "The file is not found!" in red color using the -ForegroundColor parameter.

`default`: This is the default case for the switch statement. It is executed when none of the previous conditions are met.

`Write-Host`: This command displays the message "Please enter the file".

else: This is the else block for the if statement. It is executed when the condition in the if statement is false.

`Clear-Host`: This command clears the PowerShell console screen.

`$fileInfo`: This variable is assigned the result of the Get-ChildItem command, which retrieves information about the file specified by the $filePath variable.

`$hash`: This variable is assigned the result of the Get-FileHash command, which calculates the SHA256 hash of the file specified by the $filePath variable.

`Write-Host`: This command displays the file name using the $fileInfo.Name property.

`Write-Host`: This command displays the full path of the file using the $fileInfo.FullName property.

`Write-Host`: This command displays the size of the file in bytes using the $fileInfo.Length property.

`Write-Host`: This command displays the last modification time of the file using the $fileInfo.LastWriteTime property.

`Write-Host`: This command displays the file extension using the $fileInfo.Extension property.

Write-Host: This command displays the SHA256 hash of the file using the $hash.Hash property.

| Script |  Links |
| ------ | ------ |
| fileinfo.ps1 | https://github.com/suchsoak/Powershell_script/blob/main/powershell/fileinfo.ps1
