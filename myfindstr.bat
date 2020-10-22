echo off
REM myfindstr.bat
SET workpath=d:\myworkpath
SET inputpath=d:\inputpath
SET keyword=monday

REM findstr
REM findstr /s <strings> [<drive>:][<path>]<filename>[ ...]
REM /s 現在のディレクトリとすべてのサブディレクトリを検索します。
findstr /s %keyword% %inputpath% > %workpath%\output.txt
