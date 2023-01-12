@echo off
chcp 1252 1>nul

rem Crear un programa que pida ao usuario duas variables:"numero" e "otronumero" e mostre co comando boto o resultado da suma, a multiplicación e o resto do primeiro polo segundo.


set /p  num1=Numero 1: 
set /p num2=Numero 2: 

set /a suma= %num1% + %num2%
set /a multiplicacion= %num1% * %num2%
set /a resto= !num1! % !num2!

echo  Suma: %suma%, multiplicación: %multiplicacion%, Resto:  %resto%