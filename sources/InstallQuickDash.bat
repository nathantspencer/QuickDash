@cls
@title QuickDash Installer
@echo off

rem This is the QuickDash installation script, which:
rem     (1) Kills any existing QuickDash process
rem     (2) Installs QuickDash executable in AppData
rem     (3) Places a symbolic link in the Startup directory
rem     (4) Runs the executable for immediate use

if not exist QuickDash.exe (
    echo [91mINSTALLATION ERROR:[0m QuickDash.exe does not exist in the current directory.
    goto end
)

echo Stopping execution of previous QuickDash installations...
taskkill /im QuickDash.exe /f /fi "STATUS eq RUNNING" > nul

rem TODO: Use xcopy here, interpret errors and print appropriate feedback.
rem       Move to different location; only the shortcut should exist in Startup

echo Installing QuickDash executable...
copy "QuickDash.exe" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" > nul

rem TODO: Create the symbolic link via mklink

rem TODO: Ensure that this launches correctly without affecting the installer window

echo Launching QuickDash executable for immediate use...
start "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\QuickDash.exe"

rem Herein lies the QuickDash logo art. Thanks to the need for escape characters and colors,
rem it looks a little unsavory here.

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
echo This window will close after 10 seconds or when any key is pressed.
echo:

timeout /t 10 > nul