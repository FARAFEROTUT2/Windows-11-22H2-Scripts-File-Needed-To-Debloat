@echo off
echo Reducing high RAM usage in Windows 11 22H2...

:: Clearing the Standby Memory
echo Clearing the Standby Memory...
echo 1 > &amp; wmic /namespace:\\root\cimv2\mdm\dmmap path Win32_DeviceMemoryAddress call SetDeviceMemoryState 262144,0

:: Clearing the Pagefile at Shutdown
echo Clearing the Pagefile at Shutdown...
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v ClearPageFileAtShutdown /t REG_DWORD /d 1 /f
REG ADD "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f

echo High RAM usage in Windows 11 22H2 has been reduced.
pause
