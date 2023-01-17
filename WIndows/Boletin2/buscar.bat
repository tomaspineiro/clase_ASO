@echo off 
chcp 1252 1>nul

if  "%1" EQU "" (

    echo tiene que cumplir las condiciones
    type helpBuscar.hlp
    goto fin

)

dir /B /S %1

echo fin