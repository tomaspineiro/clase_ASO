@echo off 
chcp 1252 1>nul

rem Crea un script bat que reciba un n�mero indeterminado de par�metros. Mostrar todos os par�metros e indicar cantos se recibiron empregando o bucle for.

set /a c= 0

FOR %%i IN (%*) DO (

    set /a c+= 1

    echo %%i
)

echo %c%