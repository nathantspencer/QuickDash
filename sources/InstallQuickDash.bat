@cls
@title QuickDash Installer
@echo off

rem This is the QuickDash installation script, which:
rem     (1) Installs QuickDash.exe in AppData
rem     (2) Places a symbolic link in the Startup directory
rem     (2) Runs the executable for immediate use

if not exist QuickDash.exe (
    echo INSTALLATION ERROR: QuickDash.exe does not exist in the current directory.
    goto end
)

rem TODO: Use xcopy here, interpret errors and print appropriate feedback.
rem       Move to different location; only the shortcut should exist in Startup

copy "QuickDash.exe" "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup" > nul

rem TODO: Create the symbolic link via mklink

rem TODO: Ensure that this launches correctly without affecting the installer window

start "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\QuickDash.exe"

rem Herein lies the QuickDash logo art. Thanks to the need for escape characters, it looks a little unsavory here.
rem To make edits, you can copy and paste it elsewhere and find and replace carats with nothing.
rem Then find and replace instances of pipes and less-than with those same characters preceded by carats to escape.

echo:
echo        ______    _____            _           _      ______                     _       
echo       ^|______^|  / ___ \          '_'         ^| ^|    ^|  ___ \                   ^| ^|      
echo       _______  ^| /   \ ^|  _   _   _    ____  ^| ^| __ ^| ^|   \ ^|   ___ _   _____  ^| ^|___   
echo      ^|_______^| ^| ^|  _^| ^| ^| ^| ^| ^| ^| ^|  /  __^| ^| ^|/ / ^| ^|   ^| ^|  / __` ^| /  ___^| ^| '__ \  
echo   ___________  ^| \__\ `^| ^| \_^| ^| ^| ^| ^|  '__  ^|   ^<  ^| ^|___/ ^| ^| '__^| ^| \___  \ ^| ^|  ` ^| 
echo  ^|___________^|  \___,\_\  \__,_^| ^|_^|  \____^| ^|_^|\_\ ^|______/   \___,_^| ^|____,/ ^|_^|  ^|_^| 
echo:
echo                           H A S   B E E N   I N S T A L L E D   S U C C E S S F U L L Y 
echo:

:end

echo:
echo Need support? Visit github.com/nathantspencer/QuickDash.
echo: 
echo This window will close after 10 seconds or when any key is pressed.
echo:

timeout /t 10 > nul