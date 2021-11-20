@echo off
if not exist ASSETS cd ..\
del /F /Q /A:-H processing
cls
echo TYPE HELP FOR COMMANDS
:a
set /p "in=>"
if "%in%"=="help" goto help
if "%in%"=="lc" goto lc
if exist "ASSETS\%in%.9pl" goto b
echo %in% isn't a valid command
goto a
:help
dir /b ASSETS\*.9pl
echo.
echo LOCAL COMMANDS
echo help
echo lc
echo -clear
echo -exit
goto a
:lc
set /p "lc=>"
if "%lc%"=="clear" goto lcclear
if "%lc%"=="exit" goto lcexit
goto a
:lcclear
cls
goto a
:lcexit
exit
goto a
:b
copy "ASSETS\%in%.9pl" processing
cd processing
ren "%in%.9pl" "%in%.zip"
unzip "%in%.zip"
call s.bat
goto a