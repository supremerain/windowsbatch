@echo off
setlocal enabledelayedexpansion
set debugmod=0
set list=healthchk.txt
set pingtimes=1
set logfile=healthchk.log
if %debugmod% equ 0 echo debugmod=[%debugmod%]
if %debugmod% equ 0 echo list=[%list%]
if %debugmod% equ 0 echo pingtimes=[%pingtimes%]
if %debugmod% equ 0 echo logfile=[%logfile%]
for /f "delims= " %%i in (%list%) do (
  if %debugmod% equ 0 echo i=[%%i]
  if %debugmod% equ 0 echo cmd=[ping -n %pingtimes% %%i -w 500 > nul]
  ping -n %pingtimes% %%i -w 500 > nul
  if !errorlevel! neq 0 (
    if %debugmod% equ 0 echo %date% %time% ping NG [%%i]
    echo %date% %time% ping NG [%%i] >> %logfile%
  )
)
@echo on
