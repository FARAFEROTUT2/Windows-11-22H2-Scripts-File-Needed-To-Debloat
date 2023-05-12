@echo off
echo Fixing Hotspot Shield VPN issues in Windows 11 22H2...

:: Stop Hotspot Shield services
echo Stopping Hotspot Shield services...
net stop hshld
net stop hshldvpn

:: Restart network adapter
echo Restarting network adapter...
netsh interface set interface Wi-Fi admin=disable
netsh interface set interface Wi-Fi admin=enable

:: Restart Hotspot Shield services
echo Restarting Hotspot Shield services...
net start hshldvpn
net start hshld

echo Hotspot Shield VPN issues have been fixed.
pause
