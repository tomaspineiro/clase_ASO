@echo off

rem errorLevel
rem ----------------------------------------
rem 0   Los ficheros fueron copiados sin error 
rem 1   No se encontraron ficheros para copiar
rem 2   El usuario pulsó ctrl.+Pause para aboratar el proceso
rem 4   Error de inicio. Sintaxis incorrecta
rem 5   Error de escritura en disco 

cd sefaSF
if %errorlevel% > 0 goto error
echo todo Ok

goto fin

:error

echo error - > %errorLevel%

:if 
