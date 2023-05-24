@echo off

"C:\Program Files\Java\jre-1.8\bin\java.exe" -Xmx3G -Xms1G -jar forge.jar nogui

RETURN=$?
echo %@RETURN%
echo Rui
PAUSE