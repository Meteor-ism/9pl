@echo off
if "%CD%"=="0" goto 0
if "%CD%"=="1" goto 1
if "%CD%"=="2" goto 2
:end
call "..\Shawn9's Programming Language.bat"
:0
if exist ..\..\folder.registrate goto end
md ..\ASSETS\folder
echo >> ..\..\folder.registrate
echo >> ..\ASSETS\folder\null
goto end
:1
copy ..\ASSETS\folder\*.* ..\ASSETS
rmdir /s /q ..\ASSETS\folder
del /f /q ..\..\folder.registrate
goto end
:2
copy ..\ASSETS\%asset%.9pl ..\ASSETS\folder
del /f /q ..\ASSETS\%asset%.9pl
goto end
