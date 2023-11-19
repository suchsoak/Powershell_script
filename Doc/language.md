## Programming Language

```sh
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

```

**This scrips will install the programming languages of your choice such as python, ruby and etc..**

**Part of the code**

```sh
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
    break
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
        break
    }else {
        Write-Host "Ruby Not Installed"
        Write-Host
        Write-Host "Sorry there was really problem"
    }
} 
```

Here is a breakdown of how the script works:

The script starts by clearing the console screen using the Clear-Host command.

It then defines a variable called $programming that contains a multi-line string with ASCII art representing the available programming languages and some additional information.

The script displays the $programming variable using the Write-Host command, which prints the text to the console.

The script prompts the user to choose an option by reading their input using the Read-Host command and storing it in the $language variable.

The script uses a switch statement to handle different cases based on the user's input.

Each case corresponds to a different **programming language** option.

For example, case 1 corresponds to Python, case 2 corresponds to Ruby, case 3 corresponds to GCC (C), and so on.

Each case starts by clearing the console screen using Clear-Host and then displays ASCII art representing the selected programming language using the Write-Host command.

After displaying the ASCII art, the script installs the corresponding programming language using the winget install command.

For example, for Python, it installs the Python package using winget install --id=Python.Python.3.12.

After installing the language, the script displays a success message using Write-Host.

The script also includes a default case that is executed when the user enters an invalid option. In this case, it displays an error message using Write-Host.

Overall, the script provides a menu-driven interface for installing different programming languages on the system.


| Linguage |  Links |
| ------ | ------ |
|  Python | https://www.python.org/
|  Ruby | https://www.ruby-lang.org/
|  GCC | https://www.msys2.org/
|  Nodejs | https://nodejs.org/en
|  Swift | https://www.swift.org/
|  GO | https://go.dev/
|  Kotlin | https://kotlinlang.org/



