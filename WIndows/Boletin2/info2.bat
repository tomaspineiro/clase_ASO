@echo off 
chcp 1252 1>nul

rem Crea un arquivo de procesamento por lotes que se denomine info2.bat que realice as seguintes operaci�ns: 

rem a. Limpar a pantalla. 
rem b. Crear un directorio chamado proba en C:\ 
rem c. Crear un listado de C:\ e almacenar a sa�da en un arquivo chamado list.txt en C:\. 
rem d. Copiar o arquivo list.txt no directorio proba. 
rem e. Mostrar o contido do arquivo lista.txt por pantalla de forma ordenada. 
rem f. Antes de realizar una operaci�n mostrarase unha mensaxe por pantalla que indicar� o que se va a realizar. 
rem g. Debe realizar unha pausa despois de cada operaci�n 


cls

echo se va crear la carpeta proba en c
mkdir c:\proba
pause

echo se va listar c i gurdar en un archivo 
dir c:\ > list.txt
pause

echo vamos a over el archivo creado a la carpeta creada 
copy list.txt c:\proba\
pause

echo mostrar el archivo creado 
type c:\proba\list.txt
pause




