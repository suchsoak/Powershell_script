Clear-Host
$IDE = @"

___  ___   ___ 
|_ _||   \ | __|
 | | | |) || _| 
|___||___/ |___|
Buy ME A Coffe: https://www.buymeacoffee.com/m100047r
Github: https://github.com/schsoak
BY: ~#M?x

[1] Visual Code Studio          [4] Atom                 [7] Notepadd++
[2] PyCharm Community Edition   [5] Android Studio       [8] Rubymine
[3] Sublime Text                [6] Arduino IDE          [9] ALL
"@
Write-Host $IDE 
Start-Sleep 2 > $null
Write-Host
$ide1 = Read-Host "Choose the option"

switch ($ide1) {
1{
    clear
    $visual = @"
    ___   ___   ___   ___ 
    / __| / _ \ |   \ | __|
   | (__ | (_) || |) || _| 
    \___| \___/ |___/ |___|
    Github: github.com/suchsoak
    BY: ~#M?x
"@
    Write-Host $visual -ForegroundColor Blue
    winget install --id=Microsoft.VisualStudioCode  -e
}
2{
    Clear-Host
    $pycharm = @"

    ___ __   __  ___  _  _  ___  ___  __  __ 
    | _ \\ \ / / / __|| || |/   \| _ \|  \/  |
    |  _/ \   / | (__ | __ || - ||   /| |\/| |
    |_|    |_|   \___||_||_||_|_||_|_\|_|  |_|
    Github: github.com/suchsoak
    BY: ~#M?x
"@
    Write-Host $pycharm -ForegroundColor Green
    Start-Sleep 2 > $null
    winget install --id=JetBrains.PyCharm.Community  -e
}catch{
    Write-Host "Error"
}
3{
    Clear-Host
    $sublime = @"
     ___  _   _  ___  _     ___  __  __  ___        _____  ___ __  __ _____ 
    / __|| | | || _ )| |   |_ _||  \/  || __|      |_   _|| __|\ \/ /|_   _|
    \__ \| |_| || _ \| |__  | | | |\/| || _|         | |  | _|  >  <   | |  
    |___/ \___/ |___/|____||___||_|  |_||___|        |_|  |___|/_/\_\  |_|  
    Github: github.com/suchsoak
    BY: ~#M?x
"@
    Write-Host $sublime -ForegroundColor Yellow
    Start-Sleep 2 >$null
    winget install --id=SublimeHQ.SublimeText.4  -e
    Write-Host 
    Write-Host "SUBLIME TEXT Installed"
}

4{
    Clear-Host
    $Atom = @"
     ___  _               
    /   \| |_  ___  _ __  
    | - ||  _|/ _ \| '  \ 
    |_|_| \__|\___/|_|_|_|
    Github: github.com/suchsoak
    BY: ~#M?x
"@
    Write-Host $Atom -ForegroundColor Green
    Start-Sleep 2 > $null
    Write-Host
    winget install --id=GitHub.Atom  -e
    Write-Host
    Write-Host "Atom Is Installed"
}else{
    Write-Host "Error"
}
5{
    Clear-Host
    $android = @"
    _______  ______   ______   _______  _______  ___  ______   
    |   _   ||   _  \ |   _  \ |   _   \|   _   ||   ||   _  \  
    |.  1   ||.  |   ||.  |   \|.  l   /|.  |   ||.  ||.  |   \ 
    |.  _   ||.  |   ||.  |    \.  _   1|.  |   ||.  ||.  |    \
    |:  |   ||:  |   ||:  1    /:  |   ||:  1   ||:  ||:  1    /
    |::.|:. ||::.|   ||::.. . /|::.|:. ||::.. . ||::.||::.. . / 
    `--- ---'`--- ---'`------' `--- ---'`-------'`---'`------'  
    Github: github.com/suchsoak
    BY: ~#M?x
"@
    Write-Host $android -ForegroundColor Green
    Write-Host
    Start-Sleep 2 > $null
    winget install --id=Google.AndroidStudio  -e
    Write-Host
    Write-Host "Android Studio Is Installed"
}
6{
    Clear-Host
    $arduino =@"

      :::     :::::::::  :::::::::  :::    ::: ::::::::::: ::::    :::  ::::::::  
    :+: :+:   :+:    :+: :+:    :+: :+:    :+:     :+:     :+:+:   :+: :+:    :+: 
   +:+   +:+  +:+    +:+ +:+    +:+ +:+    +:+     +:+     :+:+:+  +:+ +:+    +:+ 
  +#++:++#++: +#++:++#:  +#+    +:+ +#+    +:+     +#+     +#+ +:+ +#+ +#+    +:+ 
  +#+     +#+ +#+    +#+ +#+    +#+ +#+    +#+     +#+     +#+  +#+#+# +#+    +#+ 
  #+#     #+# #+#    #+# #+#    #+# #+#    #+#     #+#     #+#   #+#+# #+#    #+# 
  ###     ### ###    ### #########   ########  ########### ###    ####  ########  
  Github: github.com/suchsoak
  BY: ~#M?x

"@   
    Write-Host $arduino -ForegroundColor Blue
    Start-Sleep 2 > $null
    if($true){
    winget install --id=ArduinoSA.IDE.stable  -e
    Write-Host 
    Write-Host "Arduino Is Installed"
    }else {
        Write-Host "Error"
    }
}
7{
    Clear-Host
    $notepad = @"
.__   __.   ______   .___________. _______ .______      ___       _______              
|  \ |  |  /  __  \  |           ||   ____||   _  \    /   \     |       \   _     _   
|   \|  | |  |  |  | `---|  |----`|  |__   |  |_)  |  /  ^  \    |  .--.  |_| |_ _| |_ 
|  . `  | |  |  |  |     |  |     |   __|  |   ___/  /  /_\  \   |  |  |  |_   _|_   _|
|  |\   | |  `--'  |     |  |     |  |____ |  |     /  _____  \  |  '--'  | |_|   |_|  
|__| \__|  \______/      |__|     |_______|| _|    /__/     \__\ |_______/    
Github: github.com/suchsoak
BY: ~#M?x         
"@
    Write-Host $notepad -ForegroundColor Green
    Start-Sleep 2 >$null
 if($true){
    winget install --id=Notepad++.Notepad++  -e
    Write-Host
    Write-Host "Notepad++ Is Installed" -ForegroundColor Green
    
 }else {
    Write-Host "Error"
 }
}
8{
    Clear-Host
    $rubymine = @"

                                                           ____                                  
    ,-.----.                                             ,'  , `.                                
    \    /  \                 ,---,                   ,-+-,.' _ |  ,--,                          
    ;   :    \          ,--,,---.'|                ,-+-. ;   , ||,--.'|         ,---,            
    |   | .\ :        ,'_ /||   | :               ,--.'|'   |  ;||  |,      ,-+-. /  |           
    .   : |: |   .--. |  | ::   : :         .--, |   |  ,', |  ':`--'_     ,--.'|'   |   ,---.   
    |   |  \ : ,'_ /| :  . |:     |,-.    /_ ./| |   | /  | |  ||,' ,'|   |   |  ,"' |  /     \  
    |   : .  / |  ' | |  . .|   : '  | , ' , ' : '   | :  | :  |,'  | |   |   | /  | | /    /  | 
    ;   | |  \ |  | ' |  | ||   |  / :/___/ \: | ;   . |  ; |--' |  | :   |   | |  | |.    ' / | 
    |   | ;\  \:  | : ;  ; |'   : |: | .  \  ' | |   : |  | ,    '  : |__ |   | |  |/ '   ;   /| 
    :   ' | \.''  :  `--'   \   | '/ :  \  ;   : |   : '  |/     |  | '.'||   | |--'  '   |  / | 
    :   : :-'  :  ,      .-./   :    |   \  \  ; ;   | |`-'      ;  :    ;|   |/      |   :    | 
    |   |.'     `--`----'   /    \  /     :  \  \|   ;/          |  ,   / '---'        \   \  /  
    `---'                   `-'----'       \  ' ;'---'            ---`-'                `----'   
                                            `--`                                                
    Github:github.com/suchsoak
    BY:~#M?x
"@

    Write-Host $rubymine -ForegroundColor Red
    Start-Sleep 2 > $null
    Write-Host
    winget install --id=JetBrains.RubyMine  -e
}
9{
    if ($true) {
    Clear-Host
    $ides = @"                                                 
    8 8888 8 888888888o.      8 8888888888     d888888o.   
    8 8888 8 8888    `^888.   8 8888         .`8888:' `88. 
    8 8888 8 8888        `88. 8 8888         8.`8888.   Y8 
    8 8888 8 8888         `88 8 8888         `8.`8888.     
    8 8888 8 8888          88 8 888888888888  `8.`8888.    
    8 8888 8 8888          88 8 8888           `8.`8888.   
    8 8888 8 8888         ,88 8 8888            `8.`8888.  
    8 8888 8 8888        ,88' 8 8888        8b   `8.`8888. 
    8 8888 8 8888    ,o88P'   8 8888        `8b.  ;8.`8888 
    8 8888 8 888888888P'      8 888888888888 `Y8888P ,88P'       
    Github:github.com/suchsoak
    BY:~#M?x
"@
    Write-Host $ides
    Write-Host
    Start-Sleep 2 >$null
    Write-Host "CODE [1/8]"
    winget install --id=Microsoft.VisualStudioCode  -e
    Write-Host
    Write-Host "Code Is Installed" -ForegroundColor Blue
    Start-Sleep 2 >$null
    Clear-Host
    Write-Host 
    Write-Host " Pycharm [2/8]"
    winget install --id=JetBrains.PyCharm.Community  -e
    Write-Host
    Write-Host "Pycharm Is Installed" -ForegroundColor Green
    Start-Sleep 2 >$null
    Clear-Host
    Write-Host " Sublime [3/8]"
    winget install --id=SublimeHQ.SublimeText.4  -e
    Write-Host
    Write-Host "Sublime text Is Installed" -ForegroundColor Yellow
    Start-Sleep 2 >$null
    Clear-Host
    Write-Host " Atom [4/8]"
    Start-Sleep 2 > $null
    winget install --id=GitHub.Atom  -e
    Write-Host
    Write-Host "Atom Is Installed" -ForegroundColor Green
    Start-Sleep 2 >$null
    Clear-Host
    Write-Host " Android Studio [5/8]"
    Start-Sleep 2 > $null
    winget install --id=Google.AndroidStudio  -e
    Write-Host
    Write-Host "Android Stuido Is Installed" -ForegroundColor Green
    Start-Sleep 2 >$null
    Clear-Host
    Write-Host " Arduino [6/8]"
    Start-Sleep 2 > $null
    winget install --id=ArduinoSA.IDE.stable  -e
    Write-Host
    Write-Host "Arduino Is Installed" -ForegroundColor Blue
    Start-Sleep 2 >$null
    Clear-Host
    Write-Host " Notepad++ [7/8]"
    Start-Sleep 2 > $null
    winget install --id=Notepad++.Notepad++  -e
    Write-Host
    Write-Host "Notepad++ Is Installed" -ForegroundColor Green
    Start-Sleep 2 >$null
    Clear-Host
    Write-Host " Rubymine [8/8]"
    Start-Sleep 1 > $null
    winget install --id=JetBrains.RubyMine  -e
    Write-Host
    Write-Host "Rubymine Is Installed" -ForegroundColor Green
    Start-Sleep 2 >$null
    Write-Host
    Clear-Host
    Write-Host "All IDE Is Installed"
}else {
    Write-Host "Error"
}}}
