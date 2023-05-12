@echo off

echo This script will fix common issues with the Windows 11 22H2 registry.

echo.

echo Step 1: Checking the Registry for errors...

sfc /scannow

echo.

echo Step 2: Repairing the Registry...

DISM.exe /Online /Cleanup-image /Restorehealth

echo.

echo Step 3: Cleaning the Registry...

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\App Model\StateRepositoryCache" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /f

reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\RecentDocs" /f

echo.

echo All done! Your Windows 11 22H2 registry should now be fixed.

pause
