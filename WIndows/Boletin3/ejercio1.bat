@echo off 
chcp 1252 1>nul

rem Crea un script bat que reciba un número indeterminado de parámetros. Mostrar todos os parámetros e indicar cantos se recibiron empregando o bucle for.

set /a c= 0

FOR %%i IN (%*) DO (

    set /a c+= 1

    echo %%i
)

echo %c%