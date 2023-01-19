@echo off 
chcp 1252 1>nul

rem O ficheiro Alumnos.txt cont�n os datos do alumnado do instituto. Facer un arquivo .bat que recolla os datos do ficheiro e os incl�a no active directory como usuarios. Todos ter�n a mesma clave, que o usuario deber� cambiar no primeiro acceso ao sistema.

rem O curso, que figura na primeira columna do ficheiro,  indica o nome da UO na que se incluir�n, e que estar�n inclu�das na UO alumnado.

:: -----------------------------------------------------------------

rem dsadd user "CN=Luis Canal, OU=Ponetevedra, OU=Galicia, DC=RODEIRA, DC=TIc" -samid luisc -upn "luis.canal@rodeira" -fn Luis -ln Canal -pwd abc123. -mustchpwd yes

rem -samid <nombreSAN> Establece o nome de conta SAN do usuario
rem -upnUser Principal Name of the user to add 
rem -fn fist name 
rem -ln last name 
rem -pwd clave
rem -mustchpwd {yes|no} O usuario debe cambiar o contrasinal no proximo inicio de sesion ou non. Predeterminado: non.

for /F "eol=#  tokens=1-6 delims=;, "  %%i in (.\Alumnos.txt) do (

    echo curso: %%i, id: %%j, usuario: %%k, nombre: %%l, %%m , %%n, correo: %%n.%%l.%%n@rodeira

    rem dsadd user "CN=%%n %%l %%m, OU=alumno, OU=%%i, DC=%%i" {-samid|-u} %%k {-upn|-email} "%%n.%%l.%%m@tomas.aso" -fn %%m -ln %%l -pwd abc123. -mustchpwd yes

)