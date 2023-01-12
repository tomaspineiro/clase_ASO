@echo off
chcp 1252 1>nul

rem Neste exercicio terás que utilizar variables, condicionais e o comando cor; de forma tal, que ao executar o programa pídache un número e se este número é menor que 7 a cor cambie a azul, se é igual a 7 que a cor cambie a vermello e se é maior que 7 cambie a verde

set /p num=Numero: 

rem %num% es meno que 7 
if %num% LSS 7 color 1 

rem %num% es igual 7
if %num% == 7 color 4 

rem %num% es maior que 7
if %num% GTR 7 color 2 



