@echo off
echo Choose an operating system to download:
echo 1. Windows 11
echo 2. Windows 10
set /p choice="Enter your choice: "

if "%choice%"=="1" (
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://download.microsoft.com/download/8/2/B/82B5EEF1-EE1B-49B0-BC88-9C4D8D5E6CA6/22000.168.210531-1549.co_release_CLIENT_CONSUMER_x64FRE_en-us.iso', 'Windows11.iso')"
) else if "%choice%"=="2" (
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://software-download.microsoft.com/download/sg/19042.685.210720-1748.vb_release_svc_refresh_CLIENTPRO_OEMRET_x64FRE_en-us.iso', 'Windows10.iso')"
) else (
    echo Invalid choice. Exiting...
    pause
)
