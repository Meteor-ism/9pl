@echo off
echo sec (int)
set /p "out=>"
set sec=timeout /t %out% /nobreak
call c.bat