@echo off
color 0F
<nul set /p "=[92m" & echo ------------[Welcome To Activator  For windows 7]------------[0m
echo [1] Windows Loader       ^| Non-UEFI/GPT systems.
echo [2] Online KMS           ^| Windows 7 Pro and Enterprise.
echo [3] EzWindSLIC           ^| UEFI-GPT systems.
set /p choice=Enter your choice (1, 2, or 3):
if "%choice%"=="1" (
    echo Starting Windows Loader...
    start "" .\src\Windows_Loader_v2.2.2\"Windows Loader.exe"
    pause
)
if "%choice%"=="2" (
    echo Starting Online KMS...
    start "" ".\src\KMS\Online_KMS_Activation.cmd"
    pause
)

if "%choice%"=="3" (
    echo Starting EzWindSLIC...
    start "" ".\src\EzWindSLIC_3.62f_traditional\EzWindSLIC_3.62f.cmd"
    pause
)
if not "%choice%"=="1" if not "%choice%"=="2" if not "%choice%"=="3" (
    echo Invalid choice! Please enter 1, 2, or 3.
)
