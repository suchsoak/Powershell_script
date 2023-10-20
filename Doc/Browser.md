```sh
___                                  
| _ ) _ _  ___  _ __ __  ___ ___  _ _ 
| _ \| '_|/ _ \ \ V  V /(_-// -_)| '_|
|___/|_|  \___/  \_/\_/ /__/\___||_|  
Github: https://github.com/schsoak
BY: ~#M?x
```

Will install the browsers with **winget**

# How it works

You will chose between

```sh
    ___            _          _  _ 
   |_ _| _ _   ___| |_  __ _ | || |
    | | | ' \ (_-/|  _|/ _` || || |
   |___||_||_|/__/ \__|\__/_||_||_|  

    [*] 1. Brave   [*] 2. Firefox   [*] 5. All
    [*] 3. Chrome  [*] 4. Opera GX

```

# Brave Browser

```sh
        Clear-Host
        $brave = @"

         ___                      
        | _ ) _ _  __ _ __ __ ___ 
        | _ \| '_|/ _` |\ V // -_)
        |___/|_|  \__/_| \_/ \___|        


"@   
    Write-Host $brave -ForegroundColor Red
    if($true){
    winget install --id=Brave.Brave  -e
    Write-Host
    Write-Host "Brave Installed"
```

Install with winget

```sh
winget install BraveSoftware.BraveBrowser
```

# Firefox

```sh
Clear-Host
    $Firefox = @"

     ___  _             __           
    | __|(_) _ _  ___  / _| ___ __ __
    | _| | || '_|/ -_)|  _|/ _ \\ \ /
    |_|  |_||_|  \___||_|  \___//_\_\

"@
    Write-Host $Firefox -ForegroundColor Red
    if($true){
    winget install --id=Mozilla.Firefox  -e
```

Install With winget

```sh
    winget install --id=Mozilla.Firefox  -e
```

# Chrome 

```sh
 $chrom = @"
    ___  _                          
    / __|| |_   _ _  ___  _ __   ___ 
   | (__ |   \ | '_|/ _ \| '  \ / -_)
    \___||_||_||_|  \___/|_|_|_|\___|

"@
    Write-Host $chrom
    if($True){
        winget install --id=Google.Chrome  -e
        Write-Host
        Write-Host "Chrome Installed"
```
For install the chrome is like the others

```sh
    winget install --id=Google.Chrome  -e
```

# Opera GX

```sh
  4{
        $opreagx = @"
        ___   ___  ___  ___  ___         ___ __  __
        / _ \ | _ \| __|| _ \/   \       / __|\ \/ /
       | (_) ||  _/| _| |   /| - |      | (_ | >  < 
        \___/ |_|  |___||_|_\|_|_|       \___|/_/\_\       
    
"@
        Write-Host $opreagx
        if($True){
            winget install --id=Google.Chrome  -e
            Write-Host
            Write-Host "Opera GX Installed"
        }else {
            Write-Host "Have Problems"
        }
    
        }
```
For install the Opera GX is like the others

```sh
    winget install --id=Google.Chrome  -e
```

# All

In all, it will install all browser

```sh
    Write-Host
    Write-Host "Brave" -ForegroundColor Red
    Write-Host
    Start-Sleep 2 > $null
    winget install --id=BraveSoftware.BraveBrowser -e
    Clear-Host
    Write-Host "Firefox"  -ForegroundColor Yellow
    Start-Sleep 2 > $null
    winget install --id=Mozilla.Firefox -e
    Clear-Host
    Write-Host "Chrome" -ForegroundColor White
    Start-Sleep 2 > $null
    winget install --id=Google.Chrome -e
    Clear-Host
    Write-Host
    write-host "Opera GX" -ForegroundColor Red
    Write-Host
    Start-Sleep 2 > $null
    winget install --id=Opera.OperaGX  -e
    Write-Host
    Write-Host "All browsers installed"

```

| Libraries and browsers |  Links |
| ------ | ------ |
|  Winget |  https://winstall.app/   |
|  Brave |  https://brave.com/  |
|  Firefox | https://www.mozilla.org/en-US/firefox/new/    |
|  Chrome  | https://www.google.com/chrome/       |
|  Chrome  | https://www.google.com/chrome/       |
| Opera GX | https://www.opera.com/gx |


