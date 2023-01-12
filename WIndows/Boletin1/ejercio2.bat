@echo off
chcp 1252 1>nul

rem Realizar unha multiplicación de varios números pedíndollos ao usuario; e se dá superior ou igual a 300 cambiar o nome de directorio con prompt a maior_de_trescentos. En caso de ser igual ou inferior, non facer nada. 

set /p num1=Numero 1: 
set /p num2=Numero 2: 

set /a resultado= %num1% * %num2%

:: esto solo funciona en CMD 
if %resultado% GTR 300 prompt maior_de_trescentos