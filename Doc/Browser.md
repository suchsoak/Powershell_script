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

    [*] 1. Brave Browser        
    [*] 2. Firefox            
    [*] 3. Chrome    
    [*] 4. All 

```

# Brave Browser

```sh
    1{
        brave = @"

         ___                      
        | _ ) _ _  __ _ __ __ ___ 
        | _ \| '_|/ _` |\ V // -_)
        |___/|_|  \__/_| \_/ \___|        


"@
    if($true){
    winget install BraveSoftware.BraveBrowser
    Write-Host
    Write-Host "Brave Installed"


    }else{
        Write-Host "Warning"
    }}
```

Install with winget

```sh
winget install BraveSoftware.BraveBrowser
```

# Firefox

```sh
    Firefox = @"

     ___  _             __           
    | __|(_) _ _  ___  / _| ___ __ __
    | _| | || '_|/ -_)|  _|/ _ \\ \ /
    |_|  |_||_|  \___||_|  \___//_\_\

"@

    if($true){
        winget install Mozilla.Firefox
    }else {
        Write-Host "Have Problems"
    }
    }
```
Install With winget

```sh
    winget install --id=Mozilla.Firefox  -e
```

# Chrome 

```sh

    3{
    chrom = @"
    ___  _                          
    / __|| |_   _ _  ___  _ __   ___ 
   | (__ |   \ | '_|/ _ \| '  \ / -_)
    \___||_||_||_|  \___/|_|_|_|\___|

"@
    if($True){
        winget install --id=Google.Chrome  -e
        Write-Host
        Write-Host "Chrome Installed"
    }else {
        Write-Host "Have Problems"
    }

    }

```
For install the chrome is like the others

```sh
    winget install --id=Google.Chrome  -e
```

# All

In all, it will install all 3 browser (Brave, FIrefox and chrome)

```sh

if($True){
            Write-Host "Brave"
            Start-Sleep 2 > $null
            winget install --id=Brave.Brave  -e
            Clear-Host
            Write-Host "Firefox"
            Start-Sleep 2 > $null
            winget install --id=Mozilla.Firefox  -e
            clear-host
            Write-Host "Chrome"
            Start-Sleep 2 > $null
            winget install --id=Google.Chrome  -e
            Clear-Host
            Write-Host
            Write-Host "All browsers installed"
    }else {
            Write-Host
            Write-Host "Have Problems"
        }

    }

```


| Libraries and browsers |  Links |
| ------ | ------ |
|  Winget |  https://winstall.app/   |
|  Brave |  https://brave.com/  |
|  Firefox | https://www.mozilla.org/en-US/firefox/new/    |
|  Chrome  | https://www.google.com/chrome/       |


