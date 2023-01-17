@echo off 
chcp 1252 1>nul

rem esta solcuion es sin el for 
echo ---------------- sin for -------------------

set pathActual=%cd%

cd /D c:\

dir /B /S *.bmp

:: cd /D %pathActual%

rem solucion con for:
echo ---------------- con for -------------------

:: set pathActual=%cd%

:: cd /D c:\

for /R %%i in (.\*.bmp) do (
    
    echo %%i

) 

cd /D %pathActual%
