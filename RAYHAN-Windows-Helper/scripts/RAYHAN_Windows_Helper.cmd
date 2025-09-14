
@echo off
setlocal ENABLEDELAYEDEXPANSION
title RAYHAN Windows Helper v1.0
mode con: cols=78 lines=24

:: simple log path
set "LOG=%ProgramData%\RAYHAN-Helper\log.txt"
if not exist "%ProgramData%\RAYHAN-Helper" mkdir "%ProgramData%\RAYHAN-Helper"

:menu
cls
echo ===============================================================
echo                 RAYHAN Windows Helper  v1.0
echo ===============================================================
echo   1) Check activation status
echo   2) Install a genuine product key
echo   3) Online activation
echo   4) Uninstall current key (and clear cache)
echo   5) Exit
echo ---------------------------------------------------------------
set /p choice=Select an option ^> 

if "%choice%"=="1" goto status
if "%choice%"=="2" goto key
if "%choice%"=="3" goto activate
if "%choice%"=="4" goto uninstall
if "%choice%"=="5" goto end
goto menu

:status
echo [*] Checking activation status...
echo %date% %time% [INFO] Get status >> "%LOG%"
cscript.exe //nologo %SystemRoot%\System32\slmgr.vbs /dli
cscript.exe //nologo %SystemRoot%\System32\slmgr.vbs /xpr
pause
goto menu

:key
set /p mykey=Enter your product key (XXXXX-XXXXX-XXXXX-XXXXX-XXXXX): 
echo %date% %time% [INFO] Install key >> "%LOG%"
cscript.exe //nologo %SystemRoot%\System32\slmgr.vbs /ipk %mykey%
if errorlevel 1 (echo [!] Failed to install key.) else echo [+] Key installed.
pause
goto menu

:activate
echo %date% %time% [INFO] Online activation >> "%LOG%"
cscript.exe //nologo %SystemRoot%\System32\slmgr.vbs /ato
pause
goto menu

:uninstall
echo %date% %time% [INFO] Uninstall key >> "%LOG%"
cscript.exe //nologo %SystemRoot%\System32\slmgr.vbs /upk
cscript.exe //nologo %SystemRoot%\System32\slmgr.vbs /cpky
echo [+] Key removed and cache cleared.
pause
goto menu

:end
echo Bye!
endlocal
exit /b 0
