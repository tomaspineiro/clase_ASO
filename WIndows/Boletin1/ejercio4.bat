@echo off
chcp 1252 1>nul

rem Crea un ficheiro por lotes que mediante un menú e utilizando funcións permita realizar as seguintes accións 

::      a. Mostrar o ficheiro INFORME.TXT con pausa en cada pantalla.

::      b. Imprimir o ficheiro INFORME.TXT na impresora. (simular a impresora ou ben cunha impresora virtual ou máis fácil, cun ficheiro)

::      c. Enviar o texto introducido polo teclado na impresora.

::      d. Engadir a etiqueta e o número de serie da unidade actual (orde Vol) ao ficheiro  VARIOS.TXT

::      e. Engadir o directorio actual ao ficheiro VARIOS.TXT


::############################################################################

:MENU

echo -----------MENU--------------

echo a. Mostrar o ficheiro INFORME.TXT
echo b. Imprimir o ficheiro INFORME.TXT na impresora. 
echo c. Enviar o texto introducido polo teclado na impresora.
echo d. Engadir a etiqueta e o número de serie da unidade actual (orde Vol) ao ficheiro  VARIOS.TXT
echo e. Engadir o directorio actual ao ficheiro VARIOS.TXT
echo f. Salir
echo ---------------------------------

set /p opcion=Que opcion eliges 

::############################################################################

if %opcion% == "a" goto opA
if %opcion% == "b" goto opB
if %opcion% == "c" goto opC
if %opcion% == "d" goto opD
if %opcion% == "e" goto opE
if %opcion% == "f" goto end

::############################################################################

:opA

echo opcion A

goto MENU

::############################################################################

:opB

echo opcion B

goto MENU

::############################################################################

:opC

echo opcion C

goto MENU

::############################################################################

:opD

echo opcion D

goto MENU

::############################################################################

:opE

echo opcion E

goto MENU

::############################################################################

:opF

echo opcion F

goto MENU

::############################################################################
