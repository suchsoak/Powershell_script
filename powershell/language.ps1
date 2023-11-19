Clear-Host
$programming = @"
         _              __ _              __ _      
        | | __ _  _ _  / _` | _  _  __ _ / _` | ___ 
        | |/ _` || ' \ \__. || || |/ _` |\__. |/ -_)
        |_|\__/_||_||_||___/  \_._|\__/_||___/ \___|
        Github: https://github.com/schsoak
        Buy ME A Coffe: 
        BY: ~#M?x  

        [1] Python    [5] Swift
        [2] Ruby      [6] GO
        [3] GCC (C)   [7] Kotlin
        [4] Nodejs    [8] ALL
"@
Write-Host $programming
$language = Read-Host "Choose the option"

switch ($language) {
1{
    Clear-Host
    $python =@"

    ___ __   __ _____  _  _   ___   _  _ 
    | _ \\ \ / /|_   _|| || | / _ \ | \| |
    |  _/ \   /   | |  | __ || (_) || .  |
    |_|    |_|    |_|  |_||_| \___/ |_|\_|
    
    
"@
    Write-Host $python -ForegroundColor Blue
    Start-Sleep 2 > $null
    Write-Host
    winget install --id=Python.Python.3.12  -e
    Clear-Host
    pip -V -ForegroundColor Blue
    Write-Host
    Write-Host "Python Installed"
    Start-Sleep 
}

2{
    Clear-Host
    $ruby = @"

    ___  _   _  ___ __   __
    | _ \| | | || _ )\ \ / /
    |   /| |_| || _ \ \   / 
    |_|_\ \___/ |___/  |_|  
    
"@
    Write-Host $ruby -ForegroundColor Red
    Start-Sleep 2 > $null
    #Ruby on Windows
    winget install --id=RubyInstallerTeam.Ruby.3.2  -e
    Write-Host
    if ($true) {
        Ruby -v
        Write-Host "Ruby Installed"
        Start-Sleep 2 >$null
    }else {
        Write-Host "Ruby Not Installed"
        Write-Host
        Write-Host "Sorry there was really problem"
    }
} 

3{
Clear-Host
$gcc = @"
___   ___   ___ 
/ __| / __| / __|
| (_ || (__ | (__ 
\___| \___| \___|

"@
    Write-Host $gcc
    Start-Sleep 2 > $null
    #MSYS2
    winget install --id=MSYS2.MSYS2  -e
    Write-Host
    Write-Host "msys2 is installed"
}

4{
    Clear-Host
    $nodejs = @"
    _  _   ___   ___   ___     _  ___ 
    | \| | / _ \ |   \ | __| _ | |/ __|
    | .  || (_) || |) || _| | || |\__ \
    |_|\_| \___/ |___/ |___| \__/ |___/
    
    
"@ 
    Write-Host $nodejs -ForegroundColor Green
    Start-Sleep 2 > $null
    winget install --id=OpenJS.NodeJS  -e
    Write-Host
    Write-Host "nodejs is installed"
}
5{
    Clear-Host
    $swift=@"

    ___ __      __ ___  ___  _____ 
    / __|\ \    / /|_ _|| __||_   _|
    \__ \ \ \/\/ /  | | | _|   | |  
    |___/  \_/\_/  |___||_|    |_|  
    
    
"@

Write-Host $swift -ForegroundColor Yellow
Write-Host
Start-Sleep 2 >$null
winget install --id=Swift.Toolchain  -e
Write-Host
Write-Host "swift is installed"
}
6{
    Clear-Host
    $go=@"

    ___   ___  
    / __| / _ \ 
   | (_ || (_) |
    \___| \___/ 
   
"@

Write-Host $go -ForegroundColor Cyan
Write-Host
Start-Sleep 2 >$null
winget install --id=GoLang.Go  -e
Write-Host
Write-Host "Go installed"
}

7{
Clear-Host
$kotlin=@"

_  __  ___   _____  _     ___  _  _ 
| |/ / / _ \ |_   _|| |   |_ _|| \| |
|   < | (_) |  | |  | |__  | | | .  |
|_|\_\ \___/   |_|  |____||___||_|\_|
        
"@
    
    Write-Host $kotlin -ForegroundColor Magenta
    Write-Host
    Start-Sleep 2 >$null
    winget install --id=JetBrains.Kotlin.Complier  -e
    Write-Host
    Write-Host "Kotlin installed"
}

8{
    Write-Host "Python [1/7]" -ForegroundColor Blue
    Start-Sleep 2 > $null
    winget install --id=Python.Python.3.12  -e
    Write-Host "Ruby [2/7]" -ForegroundColor Red
    Start-Sleep 2 > $null
    winget install --id=RubyInstallerTeam.Ruby.3.2  -e
    Write-Host "GCC [3/7]"
    Start-Sleep 2 > $null
    winget install --id=MSYS2.MSYS2  -e
    Write-Host "Nodejs [4/7]" -ForegroundColor Green
    Start-Sleep 2 > $null
    winget install --id=OpenJS.NodeJS -e
    Write-Host "Swith [5/7]" -ForegroundColor Yellow
    Start-Sleep 2 > $null
    winget install --id=Swift.Toolchain  -e
    Write-Host "GO [6/7]" -ForegroundColor Cyan
    Start-Sleep 2 > $null
    winget install --id=GoLang.Go  -e
    Write-Host "Kotlin [7/7]" -ForegroundColor Magenta
    Start-Sleep 2 > $null
    winget install --id=JetBrains.Kotlin.Complier  -e
    
}}
