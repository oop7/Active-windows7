@echo off
setlocal
cd /d "%~dp0"

:: Self-elevation code
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
)

:: Display ASCII art
chcp 65001 >nul
@echo off
setlocal enabledelayedexpansion

:: Add blank lines at the Top for additional space
echo.
echo.
echo.

echo                ██████╗  ██████╗ ██████╗ ███████╗
echo               ██╔═══██╗██╔═══██╗██╔══██╗╚════██║
echo               ██║   ██║██║   ██║██████╔╝    ██╔╝
echo               ██║   ██║██║   ██║██╔═══╝    ██╔╝ 
echo               ╚██████╔╝╚██████╔╝██║        ██║  
echo                ╚═════╝  ╚═════╝ ╚═╝        ╚═╝  

:: Define the number of spaces for padding
set "padding=                                            "

:: Loop through each line in the ASCII art file and add spaces
for /f "delims=" %%i in (%ascii_file%) do (
    echo !padding!%%i
)

:: Add blank lines at the bottom for additional space
echo.
echo.
echo.
<nul set /p "=[92m" & echo ------------[Welcome To Activator  For windows 7]-------------------[0m
echo [1] Windows Loader       ^| Non-UEFI/GPT systems.
echo [2] Online KMS           ^| Windows 7 Pro and Enterprise.
echo [3] EzWindSLIC           ^| UEFI-GPT systems.
echo [4] Windows 7 Activator  ^| Ultimate, Professional, Home Premium.
set /p choice=Enter your choice (1, 2, 3, or 4):

:: Define paths to each tool
set "loader_path=.\src\Windows_Loader_v2.2.2\Windows Loader.exe"
set "kms_path=.\src\KMS\Online_KMS_Activation.cmd"
set "ezwind_path=.\src\EzWindSLIC_3.62f_traditional\EzWindSLIC_3.62f.cmd"
set "activator_path=.\src\Windows_7_Activator\Windows_7_Activator.bat"


:: Perform actions based on the user's choice, with file existence checks
if "%choice%"=="1" (
    if exist "%loader_path%" (
        echo Starting Windows Loader...
        start "" "%loader_path%"
    ) else (
        echo File not found: %loader_path%
    )
    pause
)
if "%choice%"=="2" (
    if exist "%kms_path%" (
        echo Starting Online KMS...
        start "" "%kms_path%"
    ) else (
        echo File not found: %kms_path%
    )
    pause
)
if "%choice%"=="3" (
    if exist "%ezwind_path%" (
        echo Starting EzWindSLIC...
        start "" "%ezwind_path%"
    ) else (
        echo File not found: %ezwind_path%
    )
    pause
)
if "%choice%"=="4" (
    if exist "%activator_path%" (
        echo Starting Windows 7 Activator...
        start "" "%activator_path%"
    ) else (
        echo File not found: %activator_path%
    )
    pause
)

:: Handle invalid choices
if not "%choice%"=="1" if not "%choice%"=="2" if not "%choice%"=="3" if not "%choice%"=="4" (
    echo Invalid choice! Please enter 1, 2, 3, or 4.
    pause
)