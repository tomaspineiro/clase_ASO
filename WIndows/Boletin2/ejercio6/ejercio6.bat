@echo off 
chcp 1252 1>nul

rem Buscar todas as aparici�ns da palabra �Lorem� nun ficheiro. 


rem a. Mostrar cantas veces aparece.
find /c /I "Lorem" %cd%\lorem1.txt

rem b. Mostrar cantas aparece tanto ca L mai�scula como min�scula.

echo Lorem
find /c "Lorem" %cd%\lorem1.txt

echo lorem
find /c "lorem" %cd%\lorem1.txt


rem c. Facer a busca en varios ficheiros e mostrar todas as aparici�ns.

echo todos los ficheros
find /c /I "Lorem" %cd%\*
