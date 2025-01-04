@cls
@title QuickDash Installer
@echo off

rem This is the QuickDash installation script, which:
rem     (1) Kills any existing QuickDash process
rem     (2) Installs QuickDash executable in AppData
rem     (3) Places a symbolic link in the Startup directory
rem     (4) Runs the executable for immediate use

rem Ensure that QuickDash.exe exists in the current directory; a prerequisite for installation.

if not exist QuickDash.exe (
    echo [91mINSTALLATION ERROR:[0m QuickDash.exe does not exist in the current directory.
    goto end
)

rem Kill any existing QuickDash processes prior to installation.

echo Stopping execution of previous QuickDash installations...
taskkill /im QuickDash.exe /f /fi "STATUS eq RUNNING" > nul

rem Copy the QuickDash executable to a QuickDash folder in AppData.

echo Installing QuickDash executable...
xcopy "QuickDash.exe" "%APPDATA%\QuickDash\" /y > nul
if errorlevel 4 (
    echo [91mINSTALLATION ERROR:[0m Initialization error during copy; ensure disk/memory space is available.
    goto end
)
if errorlevel 5 (
    echo [91mINSTALLATION ERROR:[0m Disk write error occurred during copy.
    goto end
)
if not errorlevel 0 (
    echo [91mINSTALLATION ERROR:[0m Unexpected error of level %errorlevel% occurred during copy.
    goto end
)

rem TODO: Create the symbolic link via mklink

echo Launching QuickDash executable for immediate use...
start %APPDATA%\QuickDash\QuickDash.exe

rem Herein lies the QuickDash logo art. Thanks to the use escape characters and colors, it looks a little unsavory here.

echo:
echo:
echo        [91m______[0m    _____            _           _      ______                     _       
echo       [91m^|______^|[0m  / ___ \          '_'         ^| ^|    ^|  ___ \                   ^| ^|      
echo       [93m_______[0m  ^| /   \ ^|  _   _   _    ____  ^| ^| __ ^| ^|   \ ^|   ___ _   _____  ^| ^|___   
echo      [93m^|_______^|[0m ^| ^|  _^| ^| ^| ^| ^| ^| ^| ^|  /  __^| ^| ^|/ / ^| ^|   ^| ^|  / __` ^| /  ___^| ^| '__ \  
echo   [92m^___________[0m  ^| \__\ `^| ^| \_^| ^| ^| ^| ^|  '__  ^|   ^<  ^| ^|___/ ^| ^| '__^| ^| \___  \ ^| ^|  ` ^| 
echo  [92m^|___________^|[0m  \___,\_\  \__,_^| ^|_^|  \____^| ^|_^|\_\ ^|______/   \___,_^| ^|____,/ ^|_^|  ^|_^| 
echo:
echo                           [96mH A S   B E E N   I N S T A L L E D   S U C C E S S F U L L Y[0m 
echo:

:end

echo:
echo Need support? Visit github.com/nathantspencer/QuickDash.
echo: 
echo This window will close after 20 seconds or when any key is pressed.
echo:

timeout /t 20 > nul