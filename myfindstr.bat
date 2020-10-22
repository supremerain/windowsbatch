echo off
REM myfindstr.bat
SET workpath=d:\myworkpath
SET inputpath=d:\inputpath
SET keyword1=mon
SET keyword2=sun

REM findstr
REM findstr /s <strings> [<drive>:][<path>]<filename>[ ...]

findstr /s %keyword1% %inputpath%\* > %workpath%\output1.txt
findstr /s /c:%keyword1% /c:%keyword2% %inputpath%\* > %workpath%\output1.txt

pause
