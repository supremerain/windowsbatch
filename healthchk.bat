rem todo
set list=healthchk.txt
set pingtimes=1
for /f "delims= " %%i in (%list%) do (
  ping -n %pingtimes% %%i
  if !errorlevel! neq 0 ( echo %date% %time% ping NG [%%i] >> healthchk.log)
)
