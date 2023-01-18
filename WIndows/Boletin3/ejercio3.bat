@echo off 
chcp 1252 1>nul

rem Crear un script bat que simule un xogo de dados (6 caras). Hai que lanzar 2 dados ata que se obteña o mesmo resultado nos dous dados

:while

set /a dado1=(%RANDOM%*(6+1)/32768)
set /a dado2=(%RANDOM%*(6+1)/32768)

echo Dado 1: %dado1%
echo Dado 2: %dado2%

if %dado1%==%dado2% (
    goto final
) else (
    goto while
)



:final 
echo ##################################

echo Dado 1: %dado1%
echo Dado 2: %dado2%