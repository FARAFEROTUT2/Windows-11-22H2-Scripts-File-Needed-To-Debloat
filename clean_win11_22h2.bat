@echo off
echo Cleaning Windows 11 22H2 caches and temporary files...

:: Clear Windows temporary files
echo Clearing temporary files...
del /q /f /s %TEMP%\*
del /q /f /s %SYSTEMROOT%\Temp\*

:: Clear Internet Explorer temporary files
echo Clearing Internet Explorer temporary files...
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8

:: Clear Edge temporary files
echo Clearing Edge temporary files...
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1024

:: Clear Chrome temporary files
echo Clearing Chrome temporary files...
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16384

echo Done!
pause
