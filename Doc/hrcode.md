```sh
     _  _  ___   ___   ___   ___   ___ 
    | || || _ \ / __| / _ \ |   \ | __|
    | __ ||   /| (__ | (_) || |) || _| 
    |_||_||_|_\ \___| \___/ |___/ |___|
    
    [1] Curl
    [2] QRCodeGenerator

    Github:github.com/suchsoak
    BY: suchsoak

```

# Curl

#### The `curl qrenco.de/$hrcode` command will return an hrcode generated via the terminal, without being an image.

>Example

```sh
C:\Windows\System32>curl qrenco.de/https://github.com/suchsoak/Powershell_script


█████████████████████████████████████
█████████████████████████████████████
████ ▄▄▄▄▄ ██▀▀▄▄█ █▀█ █▀█ ▄▄▄▄▄ ████
████ █   █ █▀███ ▀█▄ ▀▄▄▀█ █   █ ████
████ █▄▄▄█ █▄▄█▀▀▄▀█▄▀▀▄ █ █▄▄▄█ ████
████▄▄▄▄▄▄▄█▄█ ▀▄█▄█▄█▄█ █▄▄▄▄▄▄▄████
████▄▄█▀▀ ▄ █ █▄▀▀▄▀█ ▀▀▄▀█▀ ▄▀▀█████
█████▄ ▄▀█▄█ ▀▄█▀▄  ▄▄█▀▄▀██▄▀███████
████▄  ▄█▄▄▄▀ █▄▄█▀ ▀█▀ ▀█  ▀██▀ ████
████ ▀█▄ ▀▄▀▄▀▀ ▄▄█ ▀█▄▀▄▄█▀ ▄ █▀████
████▀█▄▀▀ ▄▄▀▄█▄ ▄▄   ▀ █▄▀ ▀▄ ▀▀████
████ ▄ ▄▄█▄▄█    █ ▄▀█▄▄▀█▀█▄▄██▄████
████▄████▄▄▄▀█ ▄ ▄▄ █  ▄ ▄▄▄ ▀▄▄▄████
████ ▄▄▄▄▄ █  ▀█▄▄█  ▄█  █▄█ ▄▄█▀████
████ █   █ ██▀▄ █▀█ ▀▄█   ▄▄▄ ▀█▀████
████ █▄▄▄█ █▀███ ██ ▄█ ▄▄▄  ▄  ▄▀████
████▄▄▄▄▄▄▄█▄█▄██▄▄██▄█▄██▄▄▄█▄██████
█████████████████████████████████████
█████████████████████████████████████
```

# QRCodeGenerator

>[!NOTE]
>you will need installed QRCodeGenerator, because of that i put in the script: `Install-Module -Name QRCodeGenerator -Force`

#### QRCodeGenerator is a PowerShell module that allows you to generate hrcode for various things, including external links. In the code it was placed just for link

#### The terminal needs to have something like this

```sh
Put the link: https://github.com/suchsoak/Powershell_script
Put the path: C:/path.PNG
```
>[!IMPORTANT]
>You need to put `.PNG` to have the file and don't forget to specify the path next to the file name you choose.

|scrip| link |
|-----|------|
| HRCODE     | https://github.com/suchsoak/Powershell_script/blob/main/powershell/hrcode.ps1
| QRCodeGenerator | https://techexpert.tips/powershell/powershell-creating-qr-code-url/
