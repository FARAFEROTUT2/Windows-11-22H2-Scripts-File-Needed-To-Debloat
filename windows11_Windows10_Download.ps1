$choice = Read-Host "Which operating system would you like to download? (1) Windows 11 22H2, (2) Windows 10 22H2, (3) Windows 8.1, (4) Windows 7"

switch ($choice) {
    1 {
        $url = "https://download.microsoft.com/download/..."
        $output = "C:\Downloads\Windows11.iso"
        Invoke-WebRequest $url -OutFile $output
    }
    2 {
        $url = "https://download.microsoft.com/download/..."
        $output = "C:\Downloads\Windows10.iso"
        Invoke-WebRequest $url -OutFile $output
    }
    3 {
        $url = "https://download.microsoft.com/download/..."
        $output = "C:\Downloads\Windows8.1.iso"
        Invoke-WebRequest $url -OutFile $output
    }
    4 {
        $url = "https://download.microsoft.com/download/..."
        $output = "C:\Downloads\Windows7.iso"
        Invoke-WebRequest $url -OutFile $output
    }
    default {
        Write-Host "Invalid choice. Please enter a number from 1 to 4."
    }
}
