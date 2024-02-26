@echo off
setlocal enabledelayedexpansion

rem Si ya tenemos una cuenta existente por ejemplo, con "Usuario" y contraseña: "12345"
set "usuarioex=Usuario"
set "contraseñaex=12345"

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
set %opcion%==1 goto opcion1 
set %opcion%==2 goto opcion2
set %opcion%==3 goto salir

if errorlevel 1 goto opcion1
if errorlevel 2 goto opcion2
if errorlevel 3 goto salir

:opcion1
echo Si has elegido esta opción es porque ya tienes una cuenta existente
echo Introduce tu usuario y contraseña
set /p Usuario=Nombre de usuario: 
set /p Contraseña=Contraseña: 
if "!Usuario!"=="!usuarioex!" ( 
    if "!Contraseña!"=="!contraseñaex!" (
        echo Has iniciado sesión correctamente.
    ) else (
        echo Contraseña o usuario no encontrado. Regístrate si no tienes cuenta.
    )
) else (
    echo Contraseña o usuario no encontrado. Regístrate si no tienes cuenta.
)
pause
goto menu

:opcion2
echo Si has elegido esta opción es porque necesitas
crear una cuenta
set /p Nombre=Nombre de usuario: 
set /p Contraseña=Contraseña: 
echo Tu nombre de usuario es: !Nombre!
echo Tu contraseña es: !Contraseña!
pause
goto menu

:salir
echo Adiós!
pause
