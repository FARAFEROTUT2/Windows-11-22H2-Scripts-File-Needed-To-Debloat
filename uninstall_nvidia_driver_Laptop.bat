@echo off
echo Uninstalling Nvidia driver from laptop...

:: Stop the Nvidia Display Container service
echo Stopping the Nvidia Display Container service...
net stop NvContainerLocalDisplayService

:: Uninstall the Nvidia driver
echo Uninstalling the Nvidia driver...
pnputil.exe -e | find /i "NVIDIA" && (pnputil.exe -f -d oem*.inf &amp; shutdown /r /t 10) || echo No Nvidia driver found.

echo Nvidia driver has been uninstalled.
pause
