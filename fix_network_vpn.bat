@echo off
echo Fixing network and VPN issues in Windows 11 22H2...

:: Reset network adapters
echo Resetting network adapters...
netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew
ipconfig /flushdns

:: Reset VPN
echo Resetting VPN...
rasdial /disconnect
rasphone -h "VPN Connection"
rasdial "VPN Connection" /phonebook:%userprofile%\AppData\Roaming\Microsoft\Network\Connections\Pbk\rasphone.pbk /disconnect
del /q /f %userprofile%\AppData\Roaming\Microsoft\Network\Connections\Pbk\rasphone.pbk
del /q /f %userprofile%\AppData\Roaming\Microsoft\Network\Connections\Pbk\rasphone.pbk.bak
echo VPN has been reset.

echo Network and VPN issues have been fixed.
pause
