@cls
@title QuickDash Uninstaller
@echo off

rem This is the QuickDash uninstall script, which:
rem     (1) Kills any existing QuickDash process
rem     (2) Removes the QuickDash executable from the Startup directory

rem Kill any existing QuickDash processes.

echo Stopping execution of QuickDash...
taskkill /im QuickDash.exe /f /fi "STATUS eq RUNNING" > nul

rem Delete the QuickDash executable from the Startup directory.

echo Deleting the QuickDash executable from Startup directory...
del /f /q "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\QuickDash.exe"

rem Herein lies the QuickDash logo art. Thanks to the use escape characters and colors, it looks a little unsavory here.

echo:
echo:
echo        [91m______[0m    _____            _           _      ______                     _       
echo       [91m^|______^|[0m  / ___ \          '_'         ^| ^|    ^|  ___ \                   ^| ^|      
echo       [93m_______[0m  ^| /   \ ^|  _   _   _    ____  ^| ^| __ ^| ^|   \ ^|   ___ _   _____  ^| ^|___   
echo      [93m^|_______^|[0m ^| ^|  _^| ^| ^| ^| ^| ^| ^| ^|  /  __^| ^| ^|/ / ^| ^|   ^| ^|  / __` ^| /  ___^| ^| '__ \  
echo   [92m^___________[0m  ^| \__\ `' ^| \_^| ^| ^| ^| ^|  '__  ^|   ^<  ^| ^|___/ ^| ^| '__^| ^| \___  \ ^| ^|  ` ^| 
echo  [92m^|___________^|[0m  \___,\_\  \__,_^| ^|_^|  \____^| ^|_^|\_\ ^|______/   \___,_^| ^|____,/ ^|_^|  ^|_^| 
echo:
echo                        [93mH A S   B E E N  U N I N S T A L L E D   S U C C E S S F U L L Y[0m 
echo:

:end

echo:
echo Need support? Visit github.com/nathantspencer/QuickDash.
echo: 
echo This window will close after 15 seconds or when any key is pressed.
echo:

timeout /t 15 > nul