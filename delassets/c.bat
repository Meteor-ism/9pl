@echo off
for /f "delims=" %%A in (..\ASSETS\%sn%.sn) do (
    del /f /q "..\ASSETS\%%A.9pl"
    del /f /q "..\ASSETS\%%A"
)
del /f /q "..\ASSETS\%sn%.sn"
call "..\Shawn9's Programming Language.bat"