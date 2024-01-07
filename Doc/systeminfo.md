```sh
o=====ooooooo=ooooooooooo==
===========+===============
=====....................+o
===o: :=:..+===========. +o
====..=o+.  ~+oo====oo+ ~==
===: ~oo==+.  ~+====oo~ +o=
===. =oo=o=+.  .====o+ .===
=o+ ~oo=+:.  .:=oo===: :===
oo. +=:.  .:~~:~~+oo=..====
o+ .=+..~+==.....:==: :o===
o+....................=o===
oo=============+====+=o====
o==o=ooooooo====oooo=======
       
Github:github.com/suchsoak
BY: suchsok
```


## This script gives information about the system, such as video card, processor, wifi and so on.

This script appears to be a batch script written in the Windows command prompt language. It is designed to gather various system and network information from the computer it is run on. Let's break down the script and explain each section in detail:

`Script Overview`

The script starts with the @echo off command, which disables the display of commands in the command prompt window. The cls command clears the screen, and color 4 sets the text color to red.

ASCII Art

The next section of the script consists of ASCII art, which is a way of creating images using characters. The ASCII art in this script displays the text "o=====ooooooo=ooooooooooo==" and other similar patterns. These patterns are purely decorative and do not serve any functional purpose.

`System Information`

After the ASCII art, the script displays system information using various commands. Here's a breakdown of each command and its purpose:

`timeout /t 6 >null`: This command waits for 6 seconds before proceeding to the next command. The >null part redirects the output to null, effectively suppressing any output from this command.

`wmic OS get name`: This command uses the Windows Management Instrumentation Command-line (WMIC) utility to retrieve the name of the operating system.

`ver`: This command displays the version of the Windows operating system.

`date /t`: This command displays the current date.

`@echo Hours: %time%`: This command displays the current time.

systeminfo| findstr "Registered Owner": This command uses the systeminfo command to retrieve system information and then uses the findstr command to filter the output for the "Registered Owner" information.

`IP and Location Information`

The script then proceeds to gather IP and location information using the curl command and the ipinfo.io API. Here's a breakdown of each command and its purpose:

```Sh

curl -s ipinfo.io | findstr "ip": This command uses the curl command to make a request to the ipinfo.io API and retrieves the IP address.
curl -s ipinfo.io | findstr "country": This command retrieves the country information.
curl -s ipinfo.io | findstr "region": This command retrieves the region information.
curl -s ipinfo.io | findstr "postal": This command retrieves the postal code information.
curl -s ipinfo.io | findstr "city": This command retrieves the city information.
curl -s ipinfo.io | findstr "hostname": This command retrieves the hostname information.
curl -s ipinfo.io | findstr "loc": This command retrieves the latitude and longitude information.
curl -s ipinfo.io | findstr "org": This command retrieves the organization information.

```
Additional Information

The script then displays additional information about the system. Here's a breakdown of each command and its purpose:


```sh
systeminfo| findstr "Registered Owner": This command retrieves the registered owner information using the systeminfo command.
@echo [] Serial: %PROGRAMFILES(x86)%: This command displays the serial number of the program files directory.
@echo [] Machine: %computername%: This command displays the name of the machine.
@echo [] User: %username%: This command displays the username.
@echo [] Operating System: %OS%: This command displays the operating system.
@echo [] Folder: %SYSTEMROOT&: This command displays the system root folder.
```
`Processor Information`

The script then retrieves information about the processor. Here's a breakdown of each command and its purpose:
```sh
wmic CPU get name: This command retrieves the name of the CPU using the WMIC utility.
@echo [] Architecture: %PROCESSOR_ARCHITECTURE%: This command displays the processor architecture.
@echo [] Processor: %PROCESSOR_IDENTIFIER%: This command displays the processor identifier.
@echo [] Version: %PROCESSOR_REVISION%: This command displays the processor version.
@echo [*] Cores: %NUMBER_OF_PROCESSORS%: This command displays the number of processor cores.
```
`Disk Information`

The script then retrieves information about the disk drives. Here's a breakdown of each command and its purpose:

`wmic diskdrive list brief`: This command retrieves a brief list of disk drives using the WMIC utility.

`Video Card Information`

The script then retrieves information about the video card. Here's a breakdown of each command and its purpose:

`wmic path win32_VideoController get name`: This command retrieves the name of the video controller using the WMIC utility.

wmic path win32_VideoController get name, adapterram, driverversion: This command retrieves the name, adapter RAM, and driver version of the video controller using the WMIC utility.

`Motherboard Information`

The script then retrieves information about the motherboard. Here's a breakdown of each command and its purpose:

```sh
wmic BIOS get name: This command retrieves the name of the BIOS using the WMIC utility.
wmic bios get ReleaseDate: This command retrieves the release date of the BIOS.
wmic baseboard get product: This command retrieves the product name of the baseboard.
```

`Network Information`

The script then retrieves information about the network. Here's a breakdown of each command and its purpose:


```sh
netsh interface ipv4 show addresses "Wi-Fi" | findstr "IP Address": This command retrieves the IP address of the Wi-Fi interface.
netsh wlan show profiles name="Interface" key=clear | findstr "SSID Name": This command retrieves the SSID name of the Wi-Fi interface.
netsh wlan show profiles name="Interface" key=clear | findstr "Key Content": This command retrieves the Wi-Fi key content of the Wi-Fi interface.
netsh wlan show interfaces | findstr "Profile": This command retrieves the profile information of the Wi-Fi interface.
netsh wlan show interfaces | findstr "State": This command retrieves the state information of the Wi-Fi interface.
netsh wlan show interfaces | findstr "Signal": This command retrieves the signal information of the Wi-Fi interface.
netsh wlan show interfaces | findstr "Channel": This command retrieves the channel information of the Wi-Fi interface.
netsh wlan show interfaces | findstr "Description": This command retrieves the description of the Wi-Fi interface.
netsh wlan show interfaces | findstr "BSSID": This command retrieves the BSSID (Basic Service Set Identifier) of the Wi-Fi interface.
```

`Conclusion`

This script gathers various system and network information from the computer it is run on. It displays information such as the operating system, IP address, location, processor, disk drives, video card, motherboard, and network details. The script uses various commands and utilities available in the Windows command prompt to retrieve and display this information.

# Why bash script

It's bash script because I already had the script ready, so in order not to have to make a powershell version I just repurposed it

| Script |  Links |
| ------ | ------ |
|  systeminfo.bat |  https://github.com/suchsoak/Powershell_script/blob/main/powershell/systeminfo.bat
