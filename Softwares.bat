@echo off

echo Installing LibreOffice...
curl -L -o LibreOffice.msi https://download.documentfoundation.org/libreoffice/stable/7.1.6/win/x86_64/LibreOffice_7.1.6_Win_x64.msi
msiexec /i "LibreOffice.msi" /qn /norestart

echo Installing GIMP...
curl -L -o GIMP.exe https://download.gimp.org/mirror/pub/gimp/v2.10/windows/gimp-2.10.28-setup-3.exe
start /wait GIMP.exe /S

echo Installing VLC Media Player...
curl -L -o VLC.exe https://get.videolan.org/vlc/3.0.14/win64/vlc-3.0.14-win64.exe
start /wait VLC.exe /S

echo Installing Audacity...
curl -L -o Audacity.exe https://www.gyan.dev/ffmpeg/builds/audacity-3.1.3/ffmpeg-n4.4-30-gf052f93c38-win64-latest.exe
start /wait Audacity.exe /S

echo Installing Firefox...
curl -L -o Firefox.exe https://download.mozilla.org/?product=firefox-latest-ssl&os=win64&lang=en-US
start /wait Firefox.exe /S

echo Installing Thunderbird...
curl -L -o Thunderbird.exe https://download.mozilla.org/?product=thunderbird-latest-ssl&os=win64&lang=en-US
start /wait Thunderbird.exe /S

echo Installing 7-Zip...
curl -L -o 7-Zip.exe https://www.7-zip.org/a/7z1900-x64.exe
start /wait 7-Zip.exe /S

echo Installing Notepad++...
curl -L -o Notepad++.exe https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.1/npp.8.1.Installer.exe
start /wait Notepad++.exe /S

echo Installing Blender...
curl -L -o Blender.zip https://download.blender.org/release/Blender2.93/blender-2.93.5-windows-x64.zip
7z x Blender.zip -y > nul
move /y "blender-2.93.5-windows-x64" "C:\Program Files\Blender Foundation\Blender"

echo Installing Inkscape...
curl -L -o Inkscape.exe https://inkscape.org/gallery/item/3626/Inkscape-1.1-win64.msi
msiexec /i "Inkscape.exe" /qn /norestart

echo Installing CCleaner...
curl -L -o CCleaner.exe https://download.ccleaner.com/ccsetup566.exe
start /wait CCleaner.exe /S

echo Installing OBS...
curl -L -o OBS.exe https://cdn-fastly.obsproject.com/downloads/OBS-Studio-27.1.3-Full-Installer-x64.exe
start /wait OBS.exe /S

echo Installing iTunes...
curl -L -o iTunes.exe https://www.apple.com/itunes/download/win64
start /wait iTunes.exe /S

echo Installing VirtualBox...
curl -L -o VirtualBox.exe https://download.virtualbox.org/virtualbox/6.1.28/VirtualBox-6.1.28-147628-Win.exe
start /wait VirtualBox.exe /S

echo Software installation complete!
pause
