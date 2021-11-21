@echo off
if not exist ..\jxjhfdf md ..\jxjhfdf
copy "..\ASSETS\%sn%.9pl" "..\jxjhfdf"
del /f /q "..\ASSETS\%sn%.9pl"
call "..\Shawn9's Programming Language.bat"