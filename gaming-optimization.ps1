# Windows 11 Gaming Optimization Script

# Disable Superfetch and Prefetch
Disable-Service -Name SysMain -StartupType Disabled
Disable-MMAgent -mc
Stop-Service -Name SysMain
Set-Service -Name SysMain -StartupType Disabled
Stop-Service -Name DeviceInstallService
Set-Service -Name DeviceInstallService -StartupType Disabled

# Disable Windows Search
Set-Service -Name Wsearch -StartupType Disabled
Stop-Service -Name Wsearch
Disable-Service -Name Wsearch

# Disable Windows Defender
Set-MpPreference -DisableRealtimeMonitoring $true
Set-MpPreference -DisableBehaviorMonitoring $true
Set-MpPreference -DisableBlockAtFirstSeen $true
Set-MpPreference -DisableIOAVProtection $true
Set-MpPreference -DisablePrivacyMode $true
Set-MpPreference -PUAProtection 0

# Disable OneDrive
Stop-Process -Name OneDrive -ErrorAction SilentlyContinue
Uninstall-Package -Name OneDrive -ProviderName Microsoft.PreinstallationEnvironment -AllUsers -NoRestart -Verbose

# Disable Game Mode
Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameDVR_Enabled" -Value 0
Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameBarEnabled" -Value 0
Set-ItemProperty -Path "HKCU:\System\GameConfigStore" -Name "GameModeEnabled" -Value 0
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" -Name "AppCaptureEnabled" -Value 0

# Disable various services
Set-Service -Name "dmwappushsvc" -StartupType Disabled
Stop-Service -Name "dmwappushsvc"
Disable-Service -Name "dmwappushsvc"

Set-Service -Name "MessagingService_2d8e4" -StartupType Disabled
Stop-Service -Name "MessagingService_2d8e4"
Disable-Service -Name "MessagingService_2d8e4"

Set-Service -Name "RetailDemo" -StartupType Disabled
Stop-Service -Name "RetailDemo"
Disable-Service -Name "RetailDemo"

Set-Service -Name "XblAuthManager" -StartupType Disabled
Stop-Service -Name "XblAuthManager"
Disable-Service -Name "XblAuthManager"

Set-Service -Name "XblGameSave" -StartupType Disabled
Stop-Service -Name "XblGameSave"
Disable-Service -Name "XblGameSave"

Set-Service -Name "XboxGipSvc" -StartupType Disabled
Stop-Service -Name "XboxGipSvc"
Disable-Service -Name "XboxGipSvc"

# Optimize Visual Effects
sysdm.cpl
Advanced tab
Performance Settings
Adjust for best performance
Apply

# Set Power Plan to High Performance
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61

# Remove Bloatware Apps
Get-AppxPackage *3dbuilder* | Remove-AppxPackage
Get-AppxPackage *windowsalarms* | Remove-AppxPackage
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
Get-AppxPackage *windowscamera* | Remove-AppxPackage
Get-AppxPackage *officehub* | Remove-AppxPackage
Get-AppxPackage *skypeapp* | Remove-AppxPackage
Get-AppxPackage *getstarted* | Remove-AppxPackage
Get-AppxPackage *zunemusic* | Remove-AppxPackage
Get-AppxPackage *windowsmaps* | Remove-AppxPackage
Get-AppxPackage *solitairecollection* | Remove-AppxPackage
Get-AppxPackage *bingfinance* | Remove-AppxPackage
Get-AppxPackage *zunevideo* | Remove-AppxPackage
Get-AppxPackage *bingnews* | Remove-AppxPackage
Get-AppxPackage *onenote* | Remove-AppxPackage
Get-AppxPackage *people* | Remove-AppxPackage
Get-AppxPackage *windowsphone* | Remove-AppxPackage
Get-AppxPackage *photos* | Remove-AppxPackage
Get-AppxPackage *windowsstore* | Remove-AppxPackage
Get-AppxPackage *bingweather* | Remove-AppxPackage

# Disable Telemetry
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "AllowTelemetry" -Value 0 -Type DWord -Force

# Set Pagefile to System Managed
Set-CimInstance -Query "SELECT * FROM Win32_PageFileSetting WHERE Name='C:\\pagefile.sys'" -Property @{InitialSize=0; MaximumSize=0}

# Disable Hibernation
powercfg -h off

# Disable Sleep
powercfg -change -standby-timeout-ac 0

# Disable Automatic Updates
Set-Service -Name wuauserv -StartupType Disabled
Stop-Service -Name wuauserv

# Disable Error Reporting
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\Windows Error Reporting" -Name "Disabled" -Value 1 -Type DWord -Force

# Disable Remote Assistance
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Value 0 -Type DWord -Force

# Disable Windows Feedback
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection" -Name "DoNotShowFeedbackNotifications" -Value 1 -Type DWord -Force

# Disable Action Center
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Explorer" -Name "DisableNotificationCenter" -Value 1 -Type DWord -Force

# Disable Windows Update Medic Service
Set-Service -Name "WaaSMedicSvc" -StartupType Disabled
Stop-Service -Name "WaaSMedicSvc"
Disable-Service -Name "WaaSMedicSvc"

# Restart System
Restart-Computer