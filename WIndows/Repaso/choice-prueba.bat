@echo off 

echo probar CHOICE

echo a - Altas
echo b - Bajas
echo m - Medianas
echo f - Fin

choice /c abmf /M "Selecciona la opci�n deseada"

echo %errorlevel%
