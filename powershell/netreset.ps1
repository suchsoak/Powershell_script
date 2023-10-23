
Clear-Host
$netreset = @"
 _  _       _                       _   
| \| | ___ | |_  _ _  ___  ___ ___ | |_ 
| .  |/ -_)|  _|| '_|/ -_)(_-// -_)|  _|
|_|\_|\___| \__||_|  \___|/__/\___| \__|

Github: https://github.com/schsoak
BY: ~#M?x   

"@

Write-Host $netreset

if ($true){
    Write-Host "Netsh"
    Start-Sleep -Seconds 2 > $null
    netsh winsock reset all
    netsh int 6to4 reset all
    netsh int ipv4 reset all
    netsh int ipv6 reset all
    netsh int httpstunnel reset all
    netsh int isatap reset all
    netsh int portproxy reset all
    netsh int tcp reset all
    netsh int teredo reset all
    netsh int ip reset
    netsh interface reset all
    Clear-Host
    Write-Host
    Write-Host "✔ Verification completed!"
    Write-Host

}else {
    Write-Host " ⚠ Haven Problem, maybe you dont start with administrator ⚠ "
}
