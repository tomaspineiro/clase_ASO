@echo off 
chcp 1252 1>nul

rem Crea un script que lea o ficheiro csv e mostre o contido


for /F "eol=# tokens=1-3 delims=; "  %%i in (.\datos.csv) do (

    echo continete: %%i, País: %%j, Capital: %%k
)