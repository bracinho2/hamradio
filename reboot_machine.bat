@echo    *******************************************
@echo    ***                                     ***
@echo    ***  PY5TH | Sulina - Paraná - Brasil   ***
@echo    ***                                     ***
@echo    *******************************************
@echo. 
@echo        ***Derruba o echolink e dependencias***
@echo.
@echo off

::Fecha Echolink
taskkill -f -im echolink.exe /T
taskkill -f -im cscript.exe /T

shutdown -r -t 120 -c "Echolink sera REINICIADO em 2 minutos!"
