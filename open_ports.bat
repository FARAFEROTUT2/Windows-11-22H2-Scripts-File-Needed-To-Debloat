@echo off
echo Opening ports 443 and 1193 in Windows 11 22H2...

:: Open port 443
echo Opening port 443...
netsh advfirewall firewall add rule name="Open Port 443" dir=in action=allow protocol=TCP localport=443

:: Open port 1193
echo Opening port 1193...
netsh advfirewall firewall add rule name="Open Port 1193" dir=in action=allow protocol=TCP localport=1193

echo Ports 443 and 1193 have been opened.
pause
