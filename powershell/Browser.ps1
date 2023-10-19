bs = @"
___                                  
| _ ) _ _  ___  _ __ __  ___ ___  _ _ 
| _ \| '_|/ _ \ \ V  V /(_-// -_)| '_|
|___/|_|  \___/  \_/\_/ /__/\___||_|  
Github: https://github.com/schsoak
BY: ~#M?x

"@
Start-Sleep 3 > $null

try {
    Clear-Host

    $install= @"

    ___            _          _  _ 
   |_ _| _ _   ___| |_  __ _ | || |
    | | | ' \ (_-/|  _|/ _` || || |
   |___||_||_|/__/ \__|\__/_||_||_|  

    [*] 1. Brave Browser  [*] 2. Firefox      
    [*] 3. Chrome         [*] 4. All
             
"@

$opt = Read-Host "Choose the option to install:"


switch ($opt) {
    1{
        brave = @"

         ___                      
        | _ ) _ _  __ _ __ __ ___ 
        | _ \| '_|/ _` |\ V // -_)
        |___/|_|  \__/_| \_/ \___|        


"@
    if($true){
    winget install --id=Brave.Brave  -e
    Write-Host
    Write-Host "Brave Installed"


    }else{
        Write-Host "Warning"
    }}
    2{
    Firefox = @"

     ___  _             __           
    | __|(_) _ _  ___  / _| ___ __ __
    | _| | || '_|/ -_)|  _|/ _ \\ \ /
    |_|  |_||_|  \___||_|  \___//_\_\

"@

    if($true){
    winget install --id=Mozilla.Firefox  -e
    }else {
        Write-Host "Have Problems"
    }
    }
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
    4{

all = @"
     ___                                  
    | _ ) _ _  ___  _ __ __  ___ ___  _ _ 
    | _ \| '_|/ _ \ \ V  V /(_-// -_)| '_|
    |___/|_|  \___/  \_/\_/ /__/\___||_|  
    Github: https://github.com/schsoak
    BY: ~#M?x

"@

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

    Default {}
}

    exit 0
}
catch {
    
    exit 1
    
}
