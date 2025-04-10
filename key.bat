@echo off
:: Check if the script is running with administrative privileges
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    echo This script requires administrator privileges.
    echo Please allow the UAC prompt to run this script as administrator.
    pause
    exit /b
)

:: Now running as administrator, execute the PowerShell command
powershell -Command "slmgr /ipk WX4NM-KYWYW-QJJR4-XV3QB-6VM33"

:: If the command fails, show an error and suggest to run golden.exe
if %errorlevel% neq 0 (
    echo ERROR: This script cannot be run directly.
    echo Please run the application: golden.exe
    pause
    exit /b 1
)

:: If successful, pause and exit normally
pause
exit
