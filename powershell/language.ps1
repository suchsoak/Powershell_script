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

    ▄▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄    ▄ 
    █       █  █ █  █       █  █ █  █       █  █  █ █
    █    ▄  █  █▄█  █▄     ▄█  █▄█  █   ▄   █   █▄█ █
    █   █▄█ █       █ █   █ █       █  █ █  █       █
    █    ▄▄▄█▄     ▄█ █   █ █   ▄   █  █▄█  █  ▄    █
    █   █     █   █   █   █ █  █ █  █       █ █ █   █
    █▄▄▄█     █▄▄▄█   █▄▄▄█ █▄▄█ █▄▄█▄▄▄▄▄▄▄█▄█  █▄▄█
    
"@
    Write-Host $python -ForegroundColor Blue
    Start-Sleep 2 > $null
    Write-Host
    winget install --id=Python.Python.3.12  -e
    Clear-Host
    pip -V -ForegroundColor Blue
    Write-Host
    Write-Host "Python Installed"
}

2{
    Clear-Host
    $ruby = @"

    ▄▄▄▄▄▄    ▄▄   ▄▄ ▄▄▄▄▄▄▄ ▄▄   ▄▄ 
    █   ▄  █ █  █ █  █  ▄    █  █ █  █
    █  █ █ █ █  █ █  █ █▄█   █  █▄█  █
    █   █▄▄█▄█  █▄█  █       █       █
    █    ▄▄  █       █  ▄   ██▄     ▄█
    █   █  █ █       █ █▄█   █ █   █  
    █▄▄▄█  █▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█ █▄▄▄█  
"@
    Write-Host $ruby -ForegroundColor Red
    Start-Sleep 2 > $null
    #Ruby on Windows
    winget install --id=RubyInstallerTeam.Ruby.3.2  -e
    Write-Host
    if ($true) {
        
        Ruby -v
        Write-Host "Ruby Installed"
    }else {
        Write-Host "Ruby Not Installed"
        Write-Host
        Write-Host "Sorry there was really problem"
    }
} 

3{
Clear-Host
$gcc = @"
    ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ 
    █       █       █       █
    █   ▄▄▄▄█       █       █
    █  █  ▄▄█     ▄▄█     ▄▄█
    █  █ █  █    █  █    █   
    █  █▄▄█ █    █▄▄█    █▄▄ 
    █▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█    
"@
    Write-Host $gcc
    Start-Sleep 2 > $null
    #MSYS2
    winget install https://github.com/msys2/msys2-installer/releases/download/2023-10-26/msys2-x86_64-20231026.exe 
    Write-Host
    Write-Host "msys2 is installed"
}

4{
    Clear-Host
    $nodejs = @"
    ▄▄    ▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄  ▄▄▄▄▄▄▄     ▄▄▄ ▄▄▄▄▄▄▄ 
    █  █  █ █       █      ██       █   █   █       █
    █   █▄█ █   ▄   █  ▄    █    ▄▄▄█   █   █  ▄▄▄▄▄█
    █       █  █ █  █ █ █   █   █▄▄▄ ▄  █   █ █▄▄▄▄▄ 
    █  ▄    █  █▄█  █ █▄█   █    ▄▄▄█ █▄█   █▄▄▄▄▄  █
    █ █ █   █       █       █   █▄▄▄█       █▄▄▄▄▄█ █
    █▄█  █▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄██▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█
    
"@ 
    Write-Host $nodejs -ForegroundColor Green
    Start-Sleep 2 > $null
    winget install --id=OpenJS.NodeJS -v "undefined" -e
    Write-Host
    Write-Host "nodejs is installed"
}
5{ if ($false) {
   winget install --id=Swift.Toolchain  -e
}else {
    $swift=@"

    ▄▄▄▄▄▄▄ ▄     ▄ ▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ 
    █       █ █ ▄ █ █   █       █       █
    █  ▄▄▄▄▄█ ██ ██ █   █    ▄▄▄█▄     ▄█
    █ █▄▄▄▄▄█       █   █   █▄▄▄  █   █  
    █▄▄▄▄▄  █       █   █    ▄▄▄█ █   █  
     ▄▄▄▄▄█ █   ▄   █   █   █     █   █  
    █▄▄▄▄▄▄▄█▄▄█ █▄▄█▄▄▄█▄▄▄█     █▄▄▄█  
    
"@

Write-Host $swift -ForegroundColor Yellow
Write-Host
Start-Sleep 2 >$null
winget install --id=Swift.Toolchain  -e
Write-Host
Write-Host "swift is installed"
}}
6{
    $go=@"

    ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ 
    █       █       █
    █   ▄▄▄▄█   ▄   █
    █  █  ▄▄█  █ █  █
    █  █ █  █  █▄█  █
    █  █▄▄█ █       █
    █▄▄▄▄▄▄▄█▄▄▄▄▄▄▄█
    
"@

Write-Host $go -ForegroundColor Cyan
Write-Host
Start-Sleep 2 >$null
winget install --id=GoLang.Go  -e
Write-Host
Write-Host "Go installed"
}
7{
$kotlin=@"

▄▄▄   ▄ ▄▄▄▄▄▄▄ ▄▄▄▄▄▄▄ ▄▄▄     ▄▄▄ ▄▄    ▄ 
█   █ █ █       █       █   █   █   █  █  █ █
█   █▄█ █   ▄   █▄     ▄█   █   █   █   █▄█ █
█      ▄█  █ █  █ █   █ █   █   █   █       █
█     █▄█  █▄█  █ █   █ █   █▄▄▄█   █  ▄    █
█    ▄  █       █ █   █ █       █   █ █ █   █
█▄▄▄█ █▄█▄▄▄▄▄▄▄█ █▄▄▄█ █▄▄▄▄▄▄▄█▄▄▄█▄█  █▄▄█

        
"@
    
    Write-Host $kotlin -ForegroundColor Magenta
    Write-Host
    Start-Sleep 2 >$null
    winget install --id=JetBrains.Kotlin.Complier  -e
    Write-Host
    Write-Host "Kotlin installed"
}
8{
    Write-Host "Python [1/7]" -ForegroundColor Black
    Start-Sleep 2 > $null
    winget install --id=Python.Python.3.12  -e
    Write-Host "Ruby [2/7]" -ForegroundColor Red
    Start-Sleep 2 > $null
    winget install --id=RubyInstallerTeam.Ruby.3.2  -e
    Write-Host "GCC [3/7]"
    Start-Sleep 2 > $null
    winget install https://github.com/msys2/msys2-installer/releases/download/2023-10-26/msys2-x86_64-20231026.exe 
    Write-Host "Nodejs [4/7]" -ForegroundColor Green
    Start-Sleep 2 > $null
    winget install --id=OpenJS.NodeJS -v "undefined" -e
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
