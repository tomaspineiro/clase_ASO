@echo off 
chcp 1252 1>nul

rem Buscar todas as aparicións da palabra “Lorem” nun ficheiro. 


rem a. Mostrar cantas veces aparece.
find /c /I "Lorem" %cd%\lorem1.txt

rem b. Mostrar cantas aparece tanto ca L maiúscula como minúscula.

echo Lorem
find /c "Lorem" %cd%\lorem1.txt

echo lorem
find /c "lorem" %cd%\lorem1.txt


rem c. Facer a busca en varios ficheiros e mostrar todas as aparicións.

echo todos los ficheros
find /c /I "Lorem" %cd%\*
