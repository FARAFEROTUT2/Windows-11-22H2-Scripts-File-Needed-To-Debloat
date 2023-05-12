@echo off
echo Increasing C: drive space in Windows 11 22H2...

:: Clearing recycle bin
echo Emptying recycle bin...
PowerShell.exe -NoProfile -Command Clear-RecycleBin -Force

:: Deleting temporary files
echo Deleting temporary files...
PowerShell.exe -NoProfile -Command "Remove-Item -Path $env:TEMP\* -Recurse -Force"
PowerShell.exe -NoProfile -Command "Remove-Item -Path $env:systemroot\Temp\* -Recurse -Force"

:: Removing hibernation file
echo Removing hibernation file...
powercfg.exe -h off

:: Deleting old Windows installations
echo Deleting old Windows installations...
dism.exe /Online /Cleanup-Image /StartComponentCleanup /ResetBase /Quiet

echo C: drive space has been increased.
pause
