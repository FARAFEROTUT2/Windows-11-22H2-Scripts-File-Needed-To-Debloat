@echo off
echo Fixing Windows Update in Windows 11 22H2...

:: Stop Windows Update services
echo Stopping Windows Update services...
net stop wuauserv
net stop cryptSvc
net stop bits
net stop msiserver

:: Rename Windows Update folders
echo Renaming Windows Update folders...
ren C:\Windows\SoftwareDistribution SoftwareDistribution.old
ren C:\Windows\System32\catroot2 catroot2.old

:: Restart Windows Update services
echo Restarting Windows Update services...
net start wuauserv
net start cryptSvc
net start bits
net start msiserver

echo Windows Update has been fixed.
pause
