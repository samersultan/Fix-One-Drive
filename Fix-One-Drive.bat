@ECHO OFF
reg ADD "HKLM\Software\Policies\Microsoft\Windows\OneDrive" /v DisableFileSyncNGSC /t REG_DWORD /D 0 /F
taskkill /f /im explorer.exe
start explorer.exe
