@echo off
chcp 1252 1>nul

rem Crea un script chamado infoUsuario.bat que anada ao final do ficheiro chamado users.log, que estará dentro do directorio C:\Data, a data, hora e o nome do usuario actual.

if not exist c:\Data ( 
    echo Procedemos a crearla 
    md c:\Data ) 

echo %date% %time% >> c:\Data\users.log

net user >> c:\Data\users.log