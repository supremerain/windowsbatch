@echo off
REM myfindstr.bat
SET workpath=d:\myworkpath
SET inputpath=d:\inputpath

SET keyword1=mon
SET keyword2=sun
SET keyword3=\"nd\"
SET keyword4=t.*day

findstr /s %keyword1% %inputpath%\* > %workpath%\output1.txt
findstr /s /c:%keyword1% /c:%keyword2% %inputpath%\* > %workpath%\output2.txt
findstr /s %keyword3% %inputpath%\* > %workpath%\output3.txt
findstr /s /r %keyword4% %inputpath%\* > %workpath%\output4.txt

pause
@echo on
