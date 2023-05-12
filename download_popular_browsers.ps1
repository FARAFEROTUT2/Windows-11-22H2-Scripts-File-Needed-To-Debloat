# Download Google Chrome
Invoke-WebRequest -Uri 'https://dl.google.com/chrome/install/standalone/GoogleChromeStandaloneEnterprise64.msi' -OutFile "$HOME\Downloads\GoogleChromeStandaloneEnterprise64.msi"

# Download Mozilla Firefox
Invoke-WebRequest -Uri 'https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US' -OutFile "$HOME\Downloads\FirefoxSetup.exe"

# Download Microsoft Edge
Invoke-WebRequest -Uri 'https://go.microsoft.com/fwlink/?linkid=2164557&Channel=Stable&language=en-US' -OutFile "$HOME\Downloads\MicrosoftEdgeSetup.exe"

# Download Opera
Invoke-WebRequest -Uri 'https://download3.operacdn.com/pub/opera/desktop/83.0.4250.0/win/Opera_83.0.4250.0_Setup.exe' -OutFile "$HOME\Downloads\Opera_83.0.4250.0_Setup.exe"

# Download Brave Browser
Invoke-WebRequest -Uri 'https://brave.com/download/' -OutFile "$HOME\Downloads\BraveBrowserSetup.exe"
