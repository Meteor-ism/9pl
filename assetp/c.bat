@echo off
if exist ..\%sn% del /f /q ..\%sn%
if not exist ..\%sn% md ..\%sn%
for /f "delims=" %%A in (..\ASSETS\%sn%.sn) do (
    set a=%%A
    copy "..\ASSETS\%a%.9pl" "..\%sn%"
    del /f /q "..\ASSETS\%a%.9pl"
)
del /f /q "..\ASSETS\%sn%.sn"
call "..\Shawn9's Programming Language.bat"