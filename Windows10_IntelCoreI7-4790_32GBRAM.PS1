# Disable Windows 10 Telemetry
Get-Service -Name DiagTrack | Set-Service -StartupType Disabled
Get-Service -Name dmwappushsvc | Set-Service -StartupType Disabled
Get-Service -Name diagnosticshub.standardcollector.service | Set-Service -StartupType Disabled

# Disable unnecessary services
Get-Service -Name "Print Spooler" | Set-Service -StartupType Disabled
Get-Service -Name "Remote Registry" | Set-Service -StartupType Disabled
Get-Service -Name "Windows Error Reporting Service" | Set-Service -StartupType Disabled
Get-Service -Name "Windows Search" | Set-Service -StartupType Disabled

# Disable startup programs
Get-CimInstance -Class Win32_StartupCommand | Where-Object {$_.Location -ne "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"} | Remove-CimInstance

# Adjust visual effects for best performance
Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Desktop\WindowMetrics" -Name "MinAnimate" -Value 0
Set-ItemProperty -Path "HKEY_CURRENT_USER\Control Panel\Desktop" -Name "UserPreferencesMask" -Value 90 12 03 80

# Disable unnecessary scheduled tasks
Get-ScheduledTask -TaskPath "\Microsoft\Windows" | Where-Object {$_.TaskName -notmatch "Time Synchronization"} | Disable-ScheduledTask

# Disable hibernation and pagefile
powercfg -h off
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name "ClearPageFileAtShutdown" -Value 1
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" -Name "DisablePagingExecutive" -Value 1

# Optimize SSD/M.2 drive
Defrag C: /O /X
fsutil behavior set DisableDeleteNotify 1

# Disable Windows Defender real-time protection
Set-MpPreference -DisableRealtimeMonitoring $true

# Disable automatic updates
Set-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" -Name "NoAutoUpdate" -Value 1

# Disable Remote Assistance
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Value 0

# Disable SMBv1
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" -Name "SMB1" -Value 0 -Type DWORD -Force

# Disable unnecessary network protocols
Disable-NetAdapterBinding -Name "*" -ComponentID ms_tcpip6
Disable-NetAdapterBinding -Name "*" -ComponentID ms_pppoe
Disable-NetAdapterBinding -Name "*" -ComponentID ms_lldp
Disable-NetAdapterBinding -Name "*" -ComponentID ms_rmcast

# Disable unnecessary features
Disable-WindowsOptionalFeature -Online -FeatureName "Internet Explorer 11"
Disable-WindowsOptionalFeature -Online -FeatureName "Microsoft Print to PDF"
Disable-WindowsOptionalFeature -Online -FeatureName "Windows Media Player"

# Clean up disk space
Cleanmgr /sageset:1
Cleanmgr /sagerun:1