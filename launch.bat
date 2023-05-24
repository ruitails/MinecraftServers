@echo off

java -Xmx3G -Xms1G -jar minecraft_server.jar nogui

echo Add
powershell -Command "git add ."
echo Commit
powershell -Command "git commit -m 'Saved world'"
echo Push
powershell -Command "git push origin Vanilla"
PAUSE

