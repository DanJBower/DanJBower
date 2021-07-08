@ECHO OFF
setlocal

cd "%~dp0"

echo Cleaning ignored files...
echo git clean -f -d -X
git clean -f -d -X

endlocal
pause
