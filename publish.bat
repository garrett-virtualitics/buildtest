@echo off

set PUBLISH_DIR=C:\Users\Virtualitics\Desktop\WorkingFolder\test

xcopy /E /y /q /f /s /i .\Buildtest !PUBLISH_DIR!\"%mydate%_%mytime%"

echo.
echo Publishing complete.
echo.
