@ECHO OFF
setlocal

cd "%~dp0"

echo git fetch --prune --all
git fetch --prune --all

for /f "tokens=1" %%i in ('git branch -vv ^| findstr /R "[origin\/.*: gone]"') DO CALL :ProcessBranch %%i %1

endlocal
pause

GOTO :TheEnd

:ProcessBranch
echo Deleting branch [%1]
git branch %1 -d
GOTO :TheEnd

:TheEnd
