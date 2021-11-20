@echo off
if %open%==1 goto open
echo %path% >> ..\%sn%.txt
:end
call "..\Shawn9's Programming Language.bat"
:open
for /f "delims=" %%A in (..\%sn%.txt) do (
    start "" %%A
)
goto end