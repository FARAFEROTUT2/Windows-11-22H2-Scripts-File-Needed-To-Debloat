# Disable Windows 10 Telemetry
Get-Service -Name DiagTrack | Set-Service -StartupType Disabled
Get-Service -Name dmwappushsvc | Set-Service -StartupType Disabled
Get-Service -Name diagnosticshub.standardcollector.service | Set-Service -StartupType Disabled

# Remove pre-installed apps
Get-AppxPackage *3dbuilder* | Remove-AppxPackage
Get-AppxPackage *windowsalarms* | Remove-AppxPackage
Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
Get-AppxPackage *windowsmaps* | Remove-AppxPackage
Get-AppxPackage *windowsphone* | Remove-AppxPackage
Get-AppxPackage *xboxapp* | Remove-AppxPackage
Get-AppxPackage *MicrosoftOfficeHub* | Remove-AppxPackage

# Disable unnecessary services
Get-Service -Name "Print Spooler" | Set-Service -StartupType Disabled
Get-Service -Name "Remote Registry" | Set-Service -StartupType Disabled
Get-Service -Name "Windows Error Reporting Service" | Set-Service -StartupType Disabled

# Disable startup programs
Get-CimInstance -Class Win32_StartupCommand | Where-Object {$_.Location -ne "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Run"} | Remove-CimInstance

# Remove unnecessary features
Disable-WindowsOptionalFeature -Online -FeatureName "Internet Explorer 11"
Disable-WindowsOptionalFeature -Online -FeatureName "Microsoft Print to PDF"
Disable-WindowsOptionalFeature -Online -FeatureName "Windows Media Player"

# Clean up disk space
Cleanmgr /sagerun:1