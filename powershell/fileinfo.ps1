Clear-Host
$locked =@"

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

"@
Write-Host $locked -ForegroundColor Red
$sleep = Start-Sleep 1 > $null
$sleep
Write-Host
Write-Host "Example: C:example/file"
Write-Host  
$filePath = Read-Host "Place the path"

if ($FALSE){
    $filePath
    Write-Host "The file is not found!" -ForegroundColor Red

} default{
    Write-Host "Please enter the file"
}

else {
Clear-Host
$fileInfo = Get-ChildItem -Path $filePath
$hash = Get-FileHash -Path $filePath -Algorithm SHA256

Write-Host "File name: " $fileInfo.Name
Write-Host "Full form: " $fileInfo.FullName
Write-Host "size: " $fileInfo.Length "bytes"
Write-Host "Last modification: " $fileInfo.LastWriteTime
Write-Host "Extensions: " $fileInfo.Extension
Write-Host "Hash (SHA256): " $hash.Hash
} 
