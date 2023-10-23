```sh
 _  _       _                       _   
| \| | ___ | |_  _ _  ___  ___ ___ | |_ 
| .  |/ -_)|  _|| '_|/ -_)(_-// -_)|  _|
|_|\_|\___| \__||_|  \___|/__/\___| \__|

Github: https://github.com/schsoak
BY: ~#M?x   

```

These commands are used to reset various network settings in Windows. Here's a breakdown of what each command does:

**netsh winsock reset all**: This command resets the Winsock catalog to its default state. Winsock is a programming interface that allows applications to communicate over a network using TCP/IP protocols.

**netsh int 6to4 reset all**: This command resets the 6to4 interface, which is used for automatic tunneling of IPv6 packets over an IPv4 network.

**netsh int ipv4 reset all**: This command resets the IPv4 configuration settings for all network interfaces.

**netsh int ipv6 reset all**: This command resets the IPv6 configuration settings for all network interfaces.

**netsh int httpstunnel reset all**: This command resets the HTTPSTunnel configuration settings for all network interfaces. HTTPSTunnel is a protocol used for tunneling HTTPS traffic over a proxy server.

**netsh int isatap reset all**: This command resets the ISATAP (Intra-Site Automatic Tunnel Addressing Protocol) configuration settings for all network interfaces. ISATAP is used to transmit IPv6 packets over an IPv4 network.

**netsh int portproxy reset all**: This command resets the port proxy configuration settings for all network interfaces. Port proxy allows for forwarding network traffic between different ports on a computer.

**netsh int tcp reset all**: This command resets the TCP/IP stack to its default state. The TCP/IP stack is responsible for handling network communication using the TCP/IP protocol suite.

**netsh int teredo reset all**: This command resets the Teredo configuration settings for all network interfaces. Teredo is a protocol used for automatic tunneling of IPv6 packets over an IPv4 network.

**netsh int ip reset**: This command resets the IP configuration settings for all network interfaces.

**netsh interface reset all**: This command resets all network interfaces to their default settings.

>[!Note]
>Please note that these commands should be used with caution and only if you are experiencing network connectivity issues. It is recommended to consult with a network administrator or IT professional before using these commands.

## Commands

<ul>
<li>netsh winsock reset all</li>
<li>netsh int 6to4 reset all</li>
<li>netsh int ipv4 reset all</li>
<li>netsh int ipv6 reset all</li>
<li>netsh int httpstunnel reset all</li>  
<li>netsh int isatap reset all</li>  
<li>netsh int portproxy reset all</li>  
<li>netsh int tcp reset all</li>  
<li>netsh int teredo reset all</li> 
</ul>

| COmmands |  Links |
| ------ | ------ |
|  Netsh | https://learn.microsoft.com/en-us/windows-server/networking/technologies/netsh/netsh-contexts
|  Netsh Syntax | https://learn.microsoft.com/en-us/windows-server/administration/windows-commands/netsh
|  Netsh Example | https://www.cyberithub.com/31-most-useful-netsh-command-examples-in-windows/
