@echo off
setlocal enabledelayedexpansion
dir /b/s d:\downloads > filelist.txt
for /f %%a in (filelist.txt) do (
  echo OUTPUT=%%a
)
pause
@echo on
