@echo off
echo Uninstalling Nvidia GeForce MX150 driver from PC...

:: Stop the Nvidia Display Container service
echo Stopping the Nvidia Display Container service...
net stop NvContainerLocalDisplayService

:: Uninstall the Nvidia GeForce MX150 driver
echo Uninstalling the Nvidia GeForce MX150 driver...
pnputil.exe -e | find /i "NVIDIA GeForce MX150" && (pnputil.exe -f -d oem*.inf &amp; shutdown /r /t 10) || echo Nvidia GeForce MX150 driver not found.

echo Nvidia GeForce MX150 driver has been uninstalled.
pause
