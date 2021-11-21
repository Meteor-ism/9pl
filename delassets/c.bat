@echo off
for /f "delims=" %%A in (..\ASSETS\%sn%.sn) do (
    set a=%%A
    del /f /q "..\ASSETS\%a%.9pl"
)
del /f /q "..\ASSETS\%sn%.sn"
call "..\Shawn9's Programming Language.bat"
