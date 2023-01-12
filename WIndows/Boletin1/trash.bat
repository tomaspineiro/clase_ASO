@echo off
chcp 1252 1>nul

rem Crea un script chamado trash.bat que se encargará de asegurarse de que o directorio trash existe no directorio persoal do usuario actual. Se o directorio trash non existe o perfil do usuario actual, entón deberá crealo. 
rem Ademais debe mover o ficheiro, cuxa roteiro se pasa por parámetro, ao directorio trash do usuario actual.
rem Débese pasar por parámetro o roteiro do ficheiro para mover. Se non se pasa por parámetro ningún valor entón deberase mostrar unha mensaxe de erro e terminar co script.
rem O script debe comprobar que existe o ficheiro cuxa roteiro se pasou por parámetro. Se o ficheiro non existe, deberá mostrar unha mensaxe de erro adecuado e terminar a execución do script.
rem O script tamén debe asegurarse de que o directorio trash existe no directorio persoal ou perfil do usuario actual. Se non existe, deberá crealo.
rem Unha vez realizadas as comprobacións moverá o ficheiro pasado por parámetro ao directorio trash.

:: declarado baribles.
set trash=%userprofile%\trash
set archivo=%1

if not exist %trash% (
    mkdir %trash%
) 

:: comprobamos que mete paramento 
if "%archivo%"=="" (
    echo tienes que indicar un paramentro
    goto fin
)
:: comprobamos que el fichero existe
if not exist %archivo% (
    echo El paramentro no existe 
    goto fin
)

move %archivo% %trash%

:fin