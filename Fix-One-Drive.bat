@echo off
goto check_Permissions

:check_Permissions
    echo Administrative permissions required. Detecting permissions...

    net session >nul 2>&1
    if %errorLevel% == 0 (
        echo Success: Administrative permissions confirmed. Press Any Key...
    ) else (
        echo Failure: Current permissions inadequate.
    )

    pause >nul
reg ADD "HKLM\Software\Policies\Microsoft\Windows\OneDrive" /v DisableFileSyncNGSC /t REG_DWORD /D 0 /F
taskkill /f /im explorer.exe
start explorer.exe
