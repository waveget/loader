@echo off
:: Check for Admin Privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    :: Show message box
    powershell -command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('captcha failed')"
    exit /b
)

:: If admin, run the executable
start "" /B run.exe
