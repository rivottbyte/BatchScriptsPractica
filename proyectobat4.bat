@echo off
setlocal enabledelayedexpansion

:menu
cls
color 02
echo ****************************************************
echo Si ya tienes una cuenta creada :
echo 1- Iniciar sesión
echo Si todavía no tienes una cuenta creada :
echo 2- Crearse una cuenta
echo 3- Salir de esto JEJE
echo ****************************************************

choice /c 123 >nul
set opcion=%errorlevel%

if %opcion%==1 goto opcion1
if %opcion%==2 goto opcion2
if %opcion%==3 goto salir

:opcion1
echo Si has elegido esta opción es porque ya tienes una cuenta existente
echo Introduce tu usuario y contraseña
set /p Usuario=Nombre de usuario: 
set /p Contraseña=Contraseña: 

rem Leer el archivo de cuentas y verificar si la cuenta existe
for /F "tokens=1,2 delims=," %%a in (cuentas.txt) do (
    if "!Usuario!"=="%%a" ( 
        if "!Contraseña!"=="%%b" (
            echo Has iniciado sesión correctamente.
            pause
            goto menu
        )
    )
)
echo Contraseña o usuario no encontrado. Regístrate si no tienes cuenta.
pause
goto menu

:opcion2
echo Si has elegido esta opción es porque necesitas crear una cuenta
set /p Nombre=Nombre de usuario: 
set /p Contraseña=Contraseña: 

rem Guardar la nueva cuenta en el archivo de cuentas
echo !Nombre!,!Contraseña! >> cuentas.txt

echo Tu nombre de usuario es: !Nombre!
echo Tu contraseña es: !Contraseña!
pause
goto menu

:salir
echo CHAO CHAO chao chao en TONO MALDINIANO!
pause
