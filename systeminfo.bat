@echo off
cls
color 4
@echo.
@echo.
@echo "o=====ooooooo=ooooooooooo=="
@echo "===========+==============="
@echo "=====....................+o"
@echo "===o: :=:..+===========. +o"
@echo "====..=o+.  ~+oo====oo+ ~=="
@echo "===: ~oo==+.  ~+====oo~ +o="
@echo "===. =oo=o=+.  .====o+ .==="
@echo "=o+ ~oo=+:.  .:=oo===: :==="
@echo "oo. +=:.  .:~~:~~+oo=..===="
@echo "o+ .=+..~+==.....:==: :o==="
@echo "o+....................=o==="
@echo "oo=============+====+=o===="
@echo "o==o=ooooooo====oooo======="
@echo ""
@echo "Github:github.com/suchsoak"
@echo "BY:suchsoak"

@echo.
timeout /t 6 >null
wmic OS get name
ver
@echo.
date /t
@echo. 

@echo Hours: %time%
@echo.
@echo --------------------
@echo.
@echo [!] Location:
timeout /t 2 > null
@echo.
@echo IP:
@echo.
curl -s ipinfo.io | findstr "ip"
curl -s ipinfo.io | findstr "country"
curl -s ipinfo.io | findstr "region"
curl -s ipinfo.io | findstr "postal"
curl -s ipinfo.io | findstr "city"
curl -s ipinfo.io | findstr "hostname"
curl -s ipinfo.io | findstr "loc"
curl -s ipinfo.io | findstr "org"
@echo.
@echo [!] Additional info:
@echo.
color 1
@echo [*] Serial: %PROGRAMFILES%
@echo [*] Machine: %computername%

@echo [*] User: %username%
@echo [*] Operating System: %OS%
@echo [*] Folder: %SYSTEMROOT&
timeout /t 6 > null
@echo.
@echo --------------------
@echo.
@echo [!] Processor info:
color 5
timeout /t 6 > null
@echo.
wmic CPU get name
@echo.
@echo [*] Architecture: %PROCESSOR_ARCHITECTURE%
@echo [*] Processor: %PROCESSOR_IDENTIFIER%
@echo [*] Version: %PROCESSOR_REVISION%
@echo [*] Cores: %NUMBER_OF_PROCESSORS%
@echo.
@echo --------------------
@echo.
@echo [!] Disk info:
color 6
timeout /t 5 > null
@echo.
wmic diskdrive list brief
@echo --------------------
@echo.
@echo [!] Video Card info:
color 7
timeout /t 5 > null
@echo.
wmic path win32_VideoController get name
wmic path win32_VideoController get name, adapterram, driverversion
@echo.
@echo --------------------
@echo.
color 9
timeout /t 5 > null
@echo [!] Motherboard info:
@echo.
color 2
timeout /t 2 > null
wmic BIOS get name
wmic bios get ReleaseDate
wmic baseboard get product
@echo.
@echo --------------------
@echo.
@echo [!] Network info:
@echo.
timeout /t 6 > null
color 8
netsh interface ipv4 show addresses "Wi-Fi" | findstr "IP Address"
netsh wlan show profiles name="Interface" key=clear | findstr "SSID Name"
netsh wlan show profiles name="Interface" key=clear | findstr "Key Content"
netsh wlan show interfaces | findstr "Profile"
netsh wlan show interfaces | findstr "State"
netsh wlan show interfaces | findstr "Signal"
netsh wlan show interfaces | findstr "Channel"
netsh wlan show interfaces | findstr "Description"
netsh wlan show interfaces | findstr "BSSID"
color 7
