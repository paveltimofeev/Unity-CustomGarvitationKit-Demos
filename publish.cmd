@echo off
REM 
for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
set today=%MyDate:~0,4%-%MyDate:~4,2%-%MyDate:~6,2%
echo "publish update at %today%"

git status
pause
git add .
git status
git commit -m "publish update at %today%"
pause
git push
pause
