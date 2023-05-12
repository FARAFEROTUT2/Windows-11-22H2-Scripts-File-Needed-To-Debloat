@echo off
echo Uninstalling Nvidia GTX 970 driver from PC...

:: Stop the Nvidia Display Container service
echo Stopping the Nvidia Display Container service...
net stop NvContainerLocalDisplayService

:: Uninstall the Nvidia GTX 970 driver
echo Uninstalling the Nvidia GTX 970 driver...
pnputil.exe -e | find /i "NVIDIA GeForce GTX 970" && (pnputil.exe -f -d oem*.inf &amp; shutdown /r /t 10) || echo Nvidia GTX 970 driver not found.

echo Nvidia GTX 970 driver has been uninstalled.
pause
