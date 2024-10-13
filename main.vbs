Set objShell = CreateObject("Shell.Application")
Set objExec = objShell.ShellExecute("run.exe", "", "", "runas", 1)

If Err.Number <> 0 Then
    MsgBox "Captcha 80001 failed: User cancelled", vbCritical, "Error"
End If
