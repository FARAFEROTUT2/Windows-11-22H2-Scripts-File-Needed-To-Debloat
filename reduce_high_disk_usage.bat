@echo off
echo Reducing high disk usage for the SSD in Windows 11 22H2...

:: Disabling Superfetch
echo Disabling Superfetch...
sc config sysmain start=disabled
net stop sysmain

:: Disabling Windows Search
echo Disabling Windows Search...
sc config wsearch start=disabled
net stop wsearch

echo High disk usage for the SSD has been reduced.
pause
