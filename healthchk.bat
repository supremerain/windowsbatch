@echo off
rem todo
set debugmod=0
set list=healthchk.txt
set pingtimes=1
if debugmod equ 0 echo debugmod=[%debugmod%]
if debugmod equ 0 echo list=[%list%]
if debugmod equ 0 echo pingtimes=[%pingtimes%]
for /f "delims= " %%i in (%list%) do (
  if debugmod equ 0 echo i=[%%i]
  if debugmod equ 0 echo cmd=[ping -n %pingtimes% %%i]
  ping -n %pingtimes% %%i
  if !errorlevel! neq 0 (
    echo %date% %time% ping NG [%%i]
    echo %date% %time% ping NG [%%i] >> healthchk.log
  )
)
@echo on
