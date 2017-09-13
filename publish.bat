@echo off

set BUILD_DIR=C:\Users\Virtualitics\Documents\GitHub\buildtest
set PUBLISH_DIR=C:\Users\Virtualitics\Desktop\WorkingFolder\test

xcopy /E /y /q /f /s /i !BUILD_DIR!\BuildTest !PUBLISH_DIR!\"%mydate%_%mytime%"

echo.
echo Publishing complete.
echo.

pause