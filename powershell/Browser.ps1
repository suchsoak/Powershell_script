
$bs = @"
___                                  
| _ ) _ _  ___  _ __ __  ___ ___  _ _ 
| _ \| '_|/ _ \ \ V  V /(_-// -_)| '_|
|___/|_|  \___/  \_/\_/ /__/\___||_|  
Github: https://github.com/schsoak
BY: ~#M?x

"@
Write-Host $bs
Start-Sleep 3 > $null

try {
    Clear-Host

    $install= @"

    ___            _          _  _ 
   |_ _| _ _   ___| |_  __ _ | || |
    | | | ' \ (_-/|  _|/ _` || || |
   |___||_||_|/__/ \__|\__/_||_||_|  

    [*] 1. Brave   [*] 2. Firefox   [*] 5. All
    [*] 3. Chrome  [*] 4. Opera GX
             
"@
Write-Host $install
$opt = Read-Host "Choose the option to install"


switch ($opt) {
    1{
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


    }else{
        Write-Host "Warning"
    }}
    2{
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
    }else {
        Write-Host "Have Problems"
    }
    }
    3{
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
    }else {
        Write-Host "Have Problems"
    }

    }
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
    5{

$all = @"
     ___                                  
    | _ ) _ _  ___  _ __ __  ___ ___  _ _ 
    | _ \| '_|/ _ \ \ V  V /(_-// -_)| '_|
    |___/|_|  \___/  \_/\_/ /__/\___||_|  
    Github: https://github.com/schsoak
    BY: ~#M?x

"@
Write-Host $all

if($False){
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
    }else {
            Write-Host
            Write-Host "Have Problems"
        }

    }

    Default {}
}

}
catch {
    
        Write-Host "Have Problems"    
}
