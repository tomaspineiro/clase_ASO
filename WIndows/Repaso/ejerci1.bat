@echo off

:: chcp 1252 1> nul

cls

if ""=="%1" (
    
    echo falta parámetro
    goto fin

)

:mostrar

if exist %1 ( 

    echo -------------------------------------

    echo existe el fichero, %1.

    echo Ruta del fichero: %~f1
    echo Unidad de disco : %~d1

    echo Ruta: %~p1
    echo nombre: %~n1
    echo Extensión: %~x1
    echo Ruta corta: %~s1
    
    echo artibuto: %~a1
    echo fecha: %~t1
    echo tamaño: %~z1

    echo Nombre extensión: %~nx1

    echo -------------------------------------

) else (
    
    echo no ixiste, %1.

)

shift
if not "%1"=="" goto mostrar

:fin