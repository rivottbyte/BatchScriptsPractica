@echo off
set /a n=%random% %% 100+1
echo Bienvenido, introduzca un numero del 1 al 100 para adivinar.
:juego
set /p respuesta=
if %respuesta% GTR %n% (
echo El numero introducido es mayor que el numero para adivinar 
goto juego
) else if %respuesta% LSS %n% (
echo El numero introducido es menor que el numero para adivinar 
goto juego

) else (
echo Has acertado el numero, guay. El numero era %n%
goto fin
) 
:fin
echo ///////////El juego ha terminado///////////
echo 1 - Jugar de nuevo
echo 2 - Salir
echo /////////////////
pause


