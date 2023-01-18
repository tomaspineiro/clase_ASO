@echo off
chcp 1252 1>null

rem  Crea un script que mostre o directorio actual, a fecha e a hora actuais e un número aleatorio 

echo %cd%

echo %date% %time%
echo numero aleatorio: %random%
