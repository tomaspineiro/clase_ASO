@echo off 
chcp 1252 1>nul

rem Crea un ficheiro que mediante un menú de opcións, permita facer un ping, un tracert ou recuperar a ip do noso equipo (inclúese un script capaz que busca a ip do equipo), volvendo ao menú logo de executar a opción seleccionada. Isto farase mediante chamadas a outros programas ou scripts.

:menu

echo Menu:
echo a - ping
echo b - tracert
echo m - Nuestra ip
echo f - Fin

choice /c abmf /M "Selecciona la opción deseada"

if %errorlevel%==1 goto ping
if %errorlevel%==2 goto tracert
if %errorlevel%==3 goto miip
if %errorlevel%==4 goto fin
goto menu

rem ----------------------------------
:ping 

    set /p ip="que ip quires pinear? "

    ping %ip%

goto menu
rem ----------------------------------
:tracert

    set /p ip="que ip quires tracert? "

    tracert %ip%

goto menu
rem ----------------------------------
:miip
    setlocal ENABLEEXTENSIONS & set "i=0.0.0.0" & set "j="
    for /f "tokens=4" %%a in ('route print^|findstr 0.0.0.0.*0.0.0.0') do (
    
        if not defined j for %%b in (%%a) do set "i=%%b" & set "j=1"
    
    )
    
    endlocal & set "dip=%i%"
    
    echo Direccion IP = %dip%

goto menu
rem ----------------------------------

:fin
echo adios