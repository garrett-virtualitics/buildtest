setlocal enabledelayedexpansion

echo start /WAIT "" "C:\Program Files\Unity1p4\Editor\Unity.exe" -batchmode -projectPath %1 -executeMethod CmdBuild.DevBuild -quit
start /WAIT "" "C:\Program Files\Unity1p4\Editor\Unity.exe" -batchmode -projectPath %1 -executeMethod CmdBuild.DevBuild -quit

set PUBLISH_DIR=C:\Users\Virtualitics\Desktop\WorkingFolder\test

For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ("%TIME%") do (set mytime=%%a-%%b)

echo.
echo ******************************************************
echo Publishing...
mkdir !PUBLISH_DIR!\"%mydate%_%mytime%"

xcopy /E /y /f /s /i .\Buildtest !PUBLISH_DIR!\"%mydate%_%mytime%"\

echo.
echo Publishing complete.
echo.
