@echo off
if exist %dl%: goto a
:end
call "..\Shawn9's Programming Language.bat"
:a
subst /d %dl%:
rmdir /s /q ..\drive
goto end