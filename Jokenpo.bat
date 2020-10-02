@echo off
 title Aula - Programacao em Scripts
 mode 80,30
 color 0a

:randomizar
set /a numero=(%random% %% 5) + 1
if /i %numero% == 1 (
set computador=PEDRA
)
if /i %numero% == 2 (
set computador=PAPEL
)
if /i %numero% == 3 (
set computador=TESOURA
)
if /i %numero% == 4 (
set computador=LAGARTO
)
if /i %numero% == 5 (
set computador=SPOCK
)
set /a vitorias= 0
set /a derrotas= 0
set /a empates= 0

:usuario
echo --------------------------------------------------------------------------------
set /p usuario=Insira seu nome:
echo --------------------------------------------------------------------------------
:inicio
cls
echo --------------------------------------------------------------------------------
echo Insira seu nome:%usuario%
echo --------------------------------------------------------------------------------
echo.
echo                                      (o o)
echo =================================ooO==(_)==Ooo==================================
echo --------------------------------------------------------------------------------
echo                               Numero secreto: %numero%
echo                             Bem-Vindo ao JO-KEN-PO
echo --------------------------------------------------------------------------------
echo.
echo [1] PEDRA
echo [2] PAPEL
echo [3] TESOURA
echo [4] LAGARTO
echo [5] SPOCK
echo [E] ENCERRAR JOGO
echo [R] REGRAS
echo ================================================================================

set /p op=Escolha uma opcao:

if /i %op% == 1 (goto:pedra)
if /i %op% == 2 (goto:papel)
if /i %op% == 3 (goto:tesoura)
if /i %op% == 4 (goto:lagarto)
if /i %op% == 5 (goto:spock)
if /i %op% == e (goto:encerrar)
if /i %op% == r (goto:regras) else (
echo.
echo -------------------------------------------------------------------------------
echo                                Opcao Invalida!
echo -------------------------------------------------------------------------------

goto:randomizar)

:placar
echo.
echo ============================== PLACAR DO JOGO =================================
echo VITORIAS: %vitorias%
echo DERROTAS: %derrotas%
echo EMPATES: %empates%
echo ===============================================================================
set /p op2=Deseja jogar denovo? [S/N]
if /i %op2% == s (goto:inicio
set /a numero=0
goto:randomizar) 
if /i %op2% == n (exit) else (
echo.
echo -------------------------------------------------------------------------------
echo                                Opcao Invalida!
echo -------------------------------------------------------------------------------
pause > nul
goto:placar)



:pedra
echo %usuario% escolheu PEDRA!
echo computador escolheu %computador%!
echo.
if /i %numero% == 1 (
echo OPS...DEU EMPATE!!!
set /a empates+=1
)
if /i %numero% == 2 (
echo QUE PENA...VOCE PERDEU!!!
set /a derrotas+=1
)
if /i %numero% == 3 (
echo PARABENS...VOCE VENCEU!!!
set /a vitorias+=1
)
if /i %numero% == 4 (
echo PARABENS...VOCE VENCEU!!!
set /a vitorias+=1
)
if /i %numero% == 5 (
echo QUE PENA...VOCE PERDEU!!!
set /a derrotas+=1
)
goto:placar


:papel
echo %usuario% escolheu PAPEL!
echo computador escolheu %computador%!
echo.
if /i %numero% == 1 (
echo PARABENS...VOCE VENCEU!!!
set /a vitorias+=1
)
if /i %numero% == 2 (
echo OPS...DEU EMPATE!!!
set /a empates+=1
)
if /i %numero% == 3 (
echo QUE PENA...VOCE PERDEU!!!
set /a derrotas+=1
)
if /i %numero% == 4 (
echo QUE PENA...VOCE PERDEU!!!
set /a derrotas+=1
)
if /i %numero% == 5 (
echo PARABENS...VOCE VENCEU!!!
set /a vitorias+=1
)
goto:placar

:tesoura
echo %usuario% escolheu TESOURA!
echo computador escolheu %computador%!
echo.
if /i %numero% == 1 (
echo QUE PENA...VOCE PERDEU!!!
set /a derrotas+=1
)
if /i %numero% == 2 (
echo PARABENS...VOCE VENCEU!!!
set /a vitorias+=1
)
if /i %numero% == 3 (
echo OPS...DEU EMPATE!!!
set /a empates+=1
)
if /i %numero% == 4 (
echo PARABENS...VOCE VENCEU!!!
set /a vitorias+=1
)
if /i %numero% == 5 (
echo QUE PENA...VOCE PERDEU!!!
set /a derrotas+=1
)
goto:placar

:lagarto
echo %usuario% escolheu LAGARTO!
echo computador escolheu %computador%!
echo.
if /i %numero% == 1 (
echo QUE PENA...VOCE PERDEU!!!
set /a derrotas+=1
)
if /i %numero% == 2 (
echo PARABENS...VOCE VENCEU!!!
set /a vitorias+=1
)
if /i %numero% == 3 (
echo QUE PENA...VOCE PERDEU!!!
set /a derrotas+=1
)
if /i %numero% == 4 (
echo OPS...DEU EMPATE!!!
set /a empates+=1
)
if /i %numero% == 5 (
echo PARABENS...VOCE VENCEU!!!
set /a vitorias+=1
)
goto:placar

:spock
echo %usuario% escolheu SPOCK!
echo computador escolheu %computador%!
echo.
if /i %numero% == 1 (
echo PARABENS...VOCE VENCEU!!!
set /a vitorias+=1
)
if /i %numero% == 2 (
echo QUE PENA...VOCE PERDEU!!!
set /a derrotas+=1
)
if /i %numero% == 3 (
echo PARABENS...VOCE VENCEU!!!
set /a vitorias+=1
)
if /i %numero% == 4 (
echo QUE PENA...VOCE PERDEU!!!
set /a derrotas+=1
)
if /i %numero% == 5 (
echo OPS...DEU EMPATE!!!
set /a empates+=1
)
goto:placar

:encerrar
set /p sair=Deseja sair do programa? [S/N]:
if /i %sair% == s (exit) 
if /i %sair% == n (goto:inicio:) else (
echo -------------------------------------------------------------------------------
echo                                Opcao Invalida!
echo -------------------------------------------------------------------------------
pause > nul
)

:regras
echo Pedra:
echo    Empata com Pedra; Ganha de Tesoura e Lagarto; Perde de Papel e Spock;
echo.
echo Papel:
echo    Empata com Papel; Ganha de Pedra e Spock; Perde de Tesoura e Lagarto;
echo.
echo Tesoura:
echo    Empata com Tesoura; Ganha de Lagarto e Papel; Perde de Pedra e Spock;
echo.
echo Lagarto:
echo    Empata com Lagarto; Ganha de Papel e Spock; Perde de Pedra e Tesoura;
echo.
echo Spock:
echo    Empata com Spock; Ganhe de Pedra e Tesoura; Perde de Lagarto e Papel;
echo.
pause
goto:inicio