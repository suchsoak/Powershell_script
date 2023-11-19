## IDE

```sh

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

```

>[!NOTE]
>All IDS are downloaded using winget

This script is a **PowerShell script** that allows the user to choose and install different Integrated Development Environments (IDEs) on their system. Let's break down how the script works and what it does:

**Introduction**

The script starts with a brief introduction that includes ASCII art logos for each IDE and some contact information for the script's author.

**Displaying Options**

After the introduction, the script displays a menu of IDE options using a here-string variable called $IDE. Each option is numbered, and the user is prompted to choose an option by entering the corresponding number.

**Handling User Input**

The script uses a switch statement to handle the user's input. Depending on the chosen option, the script executes a specific block of code for that option.

**Installing IDEs**

For each option, the script clears the console screen and displays the ASCII art logo for the chosen IDE. It then waits for 2 seconds before executing the installation command using the winget install command. The installation command is specific to each IDE and is passed as an argument to the winget install command.

**Error Handling**

If an error occurs during the installation process, the script displays an "Error" message.

**Installing All IDEs**

If the user chooses option 9, the script executes a block of code that installs all the IDEs sequentially. It clears the console screen, displays a progress message for each IDE being installed, and waits for 2 seconds before executing the installation command for each IDE.

**Conclusion**

After all the installations are complete, the script displays a message indicating that all the IDEs have been installed.

| IDE |  Links |
| ------ | ------ |
|  code  | https://code.visualstudio.com/
|  Pycharm  | https://www.jetbrains.com/pycharm/ 
|  Sublime Text  | https://www.sublimetext.com/ 
|  Atom  | https://atom-editor.cc/
|  Android Studio  | https://developer.android.com/studio
|  Arduino IDE  | https://www.arduino.cc/en/software
|  Nodepad++ | https://notepad-plus-plus.org/downloads/
|  RubyMine  | https://www.jetbrains.com/ruby/



