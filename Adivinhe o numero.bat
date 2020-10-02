@echo off
title Numeros Randomicos e Contadores
mode 41,20
color 0a
set /a cont=6

:inicio
set /a numero=(%random% %% 50) + 1
:sorteio
cls
echo.
echo                   (o o)
echo ==============ooO==(_)==Ooo==============
echo.
echo  ADVINHE O NUMERO SORTEADO ENTRE 01 E 50
echo -----------------------------------------
echo         QUANTIDADE DE TENTATIVAS: 5
echo -----------------------------------------
echo.
set /p palpite= DIGITE O SEU PALPITE: 
echo =========================================

if %numero% EQU %palpite% (
echo parabens vc acertou
echo -----------------------------------------
goto:finalizar
)

if %numero% LSS %palpite% (
echo     seu palpite e maior que o numero
echo -----------------------------------------
pause
)

if %numero% GTR %palpite% (
echo     seu palpite e menor que o numero
echo -----------------------------------------
pause
)

rem tentativas:4
cls
echo.
echo                   (o o)
echo ==============ooO==(_)==Ooo==============
echo.
echo  ADVINHE O NUMERO SORTEADO ENTRE 01 E 50
echo -----------------------------------------
echo             Numero Sorteado: %numero%
echo         QUANTIDADE DE TENTATIVAS: 4
echo -----------------------------------------
echo.
set /p palpite= DIGITE O SEU PALPITE: 
echo =========================================

if %numero% EQU %palpite% (
echo parabens vc acertou
echo -----------------------------------------
goto:finalizar
)

if %numero% LSS %palpite% (
echo     seu palpite e maior que o numero
echo -----------------------------------------
pause
)

if %numero% GTR %palpite% (
echo     seu palpite e menor que o numero
echo -----------------------------------------
pause
)

rem tentativas:3
cls
echo.
echo                   (o o)
echo ==============ooO==(_)==Ooo==============
echo.
echo  ADVINHE O NUMERO SORTEADO ENTRE 01 E 50
echo -----------------------------------------
echo             Numero Sorteado: %numero%
echo         QUANTIDADE DE TENTATIVAS: 3
echo -----------------------------------------
echo.
set /p palpite= DIGITE O SEU PALPITE: 
echo =========================================

if %numero% EQU %palpite% (
echo parabens vc acertou
echo -----------------------------------------
goto:finalizar
)

if %numero% LSS %palpite% (
echo     seu palpite e maior que o numero
echo -----------------------------------------
pause
)

if %numero% GTR %palpite% (
echo     seu palpite e menor que o numero
echo -----------------------------------------
pause
)

rem tentativas:2
cls
echo.
echo                   (o o)
echo ==============ooO==(_)==Ooo==============
echo.
echo  ADVINHE O NUMERO SORTEADO ENTRE 01 E 50
echo -----------------------------------------
echo             Numero Sorteado: %numero%
echo         QUANTIDADE DE TENTATIVAS: 2
echo -----------------------------------------
echo.
set /p palpite= DIGITE O SEU PALPITE: 
echo =========================================

if %numero% EQU %palpite% (
echo parabens vc acertou
echo -----------------------------------------
goto:finalizar
)

if %numero% LSS %palpite% (
echo     seu palpite e maior que o numero
echo -----------------------------------------
pause
)

if %numero% GTR %palpite% (
echo     seu palpite e menor que o numero
echo -----------------------------------------
pause
)

rem tentativas 1
cls
echo.
echo                   (o o)
echo ==============ooO==(_)==Ooo==============
echo.
echo  ADVINHE O NUMERO SORTEADO ENTRE 01 E 50
echo -----------------------------------------
echo             Numero Sorteado: %numero%
echo         QUANTIDADE DE TENTATIVAS: 1
echo -----------------------------------------
echo.
set /p palpite= DIGITE O SEU PALPITE: 
echo =========================================

if %numero% EQU %palpite% (
echo parabens vc acertou
echo -----------------------------------------
) else (
echo               voce perdeu!!!
echo        O numero sorteado era %numero%
echo -----------------------------------------
)
:finalizar
set /p resp=Deseja sortear novo numero? [S/N]:
if /i %resp% == s (goto:inicio) else (exit)