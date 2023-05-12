@echo off
echo Speeding up internet connection in Windows 11 22H2...

:: Enable TCP/IP auto-tuning
echo Enabling TCP/IP auto-tuning...
netsh int tcp set global autotuninglevel=normal

:: Increase maximum number of simultaneous connections
echo Increasing maximum number of simultaneous connections...
netsh int tcp set global maxconns=10000

:: Disable bandwidth limit for foreground applications
echo Disabling bandwidth limit for foreground applications...
netsh int tcp set heuristics disabled

:: Disable Nagle's algorithm
echo Disabling Nagle's algorithm...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPNoDelay" /t REG_DWORD /d 1 /f

echo Internet connection has been optimized.
pause
