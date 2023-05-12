# Disable telemetry and data collection
Disable-ScheduledTask -TaskName "Microsoft\Windows\AppID\SmartScreenSpecific"
Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClient"
Disable-ScheduledTask -TaskName "Microsoft\Windows\Feedback\Siuf\DmClientOnScenarioDownload"
Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Consolidator"
Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask"
Disable-ScheduledTask -TaskName "Microsoft\Windows\Customer Experience Improvement Program\Uploader"
Disable-ScheduledTask -TaskName "Microsoft\Windows\Power Efficiency Diagnostics\AnalyzeSystem"
Disable-ScheduledTask -TaskName "Microsoft\Windows\Shell\FamilySafetyMonitor"
Disable-ScheduledTask -TaskName "Microsoft\Windows\Shell\FamilySafetyRefresh"
Disable-ScheduledTask -TaskName "Microsoft\Windows\Shell\FamilySafetyUpload"
Disable-ScheduledTask -TaskName "Microsoft\Windows\TPM\Tpm-Maintenance"

# Uninstall bloatware and unnecessary software
Get-AppxPackage *3dbuilder* | Remove-AppxPackage
Get-AppxPackage *bing* | Remove-AppxPackage
Get-AppxPackage *skype* | Remove-AppxPackage
Get-AppxPackage *officehub* | Remove-AppxPackage
Get-AppxPackage *onenote* | Remove-AppxPackage
Get-AppxPackage *people* | Remove-AppxPackage
Get-AppxPackage *solitairecollection* | Remove-AppxPackage
Get-AppxPackage *zunemusic* | Remove-AppxPackage
Get-AppxPackage *windowsmaps* | Remove-AppxPackage
Get-AppxPackage *xboxapp* | Remove-AppxPackage

# Disable unnecessary services
Set-Service -Name "DiagTrack" -StartupType Disabled
Set-Service -Name "wercplsupport" -StartupType Disabled
Set-Service -Name "WerSvc" -StartupType Disabled
Set-Service -Name "lfsvc" -StartupType Disabled
Set-Service -Name "MapsBroker" -StartupType Disabled
Set-Service -Name "WSearch" -StartupType Disabled
Set-Service -Name "WMPNetworkSvc" -StartupType Disabled

# Disable unnecessary startup items
Get-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" | Remove-Item -Recurse -Force
Get-Item "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" | Remove-Item -Recurse -Force
