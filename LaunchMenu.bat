batch
@echo off
setlocal

:menu
cls
echo 1. Hexxitt
echo 2. Vanilla
echo 3. PombinhasReforged
echo 0. Exit

set /p choice=Enter your choice: 

if "%choice%"=="1" (   

    powershell -Command git checkout main 

    java -Xmx3G -Xms1G -jar server.jar nogui

    echo Add
    powershell -Command "git add ."
    echo Commit
    powershell -Command "git commit -m 'Saved world'"
    echo Push
    powershell -Command "git push origin Hexxitt"
    PAUSE

) else if "%choice%"=="2" (
    powershell -Command git checkout Vanilla 

    java -Xmx3G -Xms1G -jar server.jar nogui

    echo Add
    powershell -Command "git add ."
    echo Commit
    powershell -Command "git commit -m 'Saved world'"
    echo Push
    powershell -Command "git push origin Vanilla"
    PAUSE
) else if "%choice%"=="3" (

    powershell -Command git checkout PombinhasReforged

    "C:\Program Files\Java\jre-1.8\bin\java.exe" -Xmx3G -Xms1G -jar server.jar nogui

    echo Add
    powershell -Command "git add ."
    echo Commit
    powershell -Command "git commit -m 'Saved world'"
    echo Push
    powershell -Command "git push origin PombinhasReforged"
    PAUSE

) else if "%choice%"=="0" (
    exit
) else (
    echo Invalid choice. Please try again.
    pause
    goto menu
)