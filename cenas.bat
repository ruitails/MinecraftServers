@echo off
setlocal EnableDelayedExpansion

:: Retrieve the branch names and store them in an array
set i=0
for /f "tokens=*" %%a in ('git branch --list') do (
  set /A i+=1
  set "branch[!i!]=%%a"
)

:menu
cls
echo Select a branch:

:: Display the branch options
for /L %%n in (1,1,%i%) do (
  echo %%n. !branch[%%n]:~2!
)

:: Prompt for user input
set /P selection=Enter branch number (or 0 to exit):

:: Validate the user input
if "%selection%"=="0" (
  exit /b
) else if not defined branch[%selection%] (
  echo Invalid selection.
  timeout /t 2 >nul
  goto menu
)

:: Checkout the selected branch
git checkout !branch[%selection%]:~2!

:end
