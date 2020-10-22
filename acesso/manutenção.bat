@echo off
mode 80,30
cls
:menu
cls
color F
@echo    **********************
echo.
title OHANA TECHNICAL PANEL MAINTENANCE ADVANCED 2018 FAST WORK
echo.
echo  OHANA TECHNICAL PANEL MAINTENANCE ADVANCED 2018 FAST WORK
@echo.
@echo ***************************************************************************
echo  Script de limpeza de arquivos temporários em TODOS usuários do Windows- 
echo  Itens removidos: Cookies - Local Settings Temp - 
echo  AppData Temp -AppData Internet Temp - MS Edge Windows Error Report (WER)-
echo  Logs- C: Temp, Windows Temp - Firefox Temp (perfil todo) - 
echo  Chrome Temp (pasta Cache) - Opera (pasta cache - Vivaldi (pasta Cache)-
@echo.
@echo ***************************************************************************
echo  Atualizado em: 25/07/2018 por Joao Flavo Costa Teixeira Filho 
echo.
echo  Computador: %computername%        Usuario: %username%
@echo.
@echo ***************************************************************************
echo press any key to start
pause >nul
@echo off
echo This script will clean temporairy folders, defrag all fixed drives and shutdown computer.
PAUSE

 star /runwait
@echo off
del /f /q "%temp%"
rd /s /q "%temp%"
if not exist "%temp%" md "%temp%"
del /f /q "%windir%\temp"
rd /s /q "%windir%\temp"
if not exist "%windir%\temp" md "%windir%\temp"

paus >nul

@ECHO OFF
ECHO Deletando Arquivos Temporários, Cookies, Histórico, Senhas e informações em Formulários
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 1
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 2
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 8
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 32
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255
ECHO Done!
PAUSE
CLS 

START /RUNWait

%comspec% /c del /f /q "%temp%"
%comspec% /c rd /s /q "%temp%"
%comspec% /c if not exist "%temp%" md "%temp%"
%comspec% /c del /f /q "%windir%\temp"
%comspec% /c rd /s /q "%windir%\temp"
%comspec% /c if not exist "%windir%\temp" md "%windir%\temp"
%comspec% /c if exist "C:\System Volume Information" defrag.exe C: /f /v
%comspec% /c if exist "D:\System Volume Information" defrag.exe D: /f /v
%comspec% /c if exist "E:\System Volume Information" defrag.exe E: /f /v
%comspec% /c if exist "F:\System Volume Information" defrag.exe F: /f /v
%comspec% /c if exist "G:\System Volume Information" defrag.exe G: /f /v
%comspec% /c if exist "H:\System Volume Information" defrag.exe H: /f /v
%comspec% /c if exist "I:\System Volume Information" defrag.exe I: /f /v
%comspec% /c if exist "J:\System Volume Information" defrag.exe J: /f /v
%comspec% /c if exist "K:\System Volume Information" defrag.exe K: /f /v
%comspec% /c if exist "L:\System Volume Information" defrag.exe L: /f /v
%comspec% /c if exist "M:\System Volume Information" defrag.exe M: /f /v
%comspec% /c if exist "N:\System Volume Information" defrag.exe N: /f /v
%comspec% /c if exist "O:\System Volume Information" defrag.exe O: /f /v
%comspec% /c if exist "P:\System Volume Information" defrag.exe P: /f /v
%comspec% /c if exist "Q:\System Volume Information" defrag.exe Q: /f /v
%comspec% /c if exist "R:\System Volume Information" defrag.exe R: /f /v
%comspec% /c if exist "S:\System Volume Information" defrag.exe S: /f /v
%comspec% /c if exist "T:\System Volume Information" defrag.exe T: /f /v
%comspec% /c if exist "U:\System Volume Information" defrag.exe U: /f /v
%comspec% /c if exist "V:\System Volume Information" defrag.exe V: /f /v
%comspec% /c if exist "W:\System Volume Information" defrag.exe W: /f /v
%comspec% /c if exist "X:\System Volume Information" defrag.exe X: /f /v
%comspec% /c if exist "Y:\System Volume Information" defrag.exe Y: /f /v
%comspec% /c if exist "Z:\System Volume Information" defrag.exe Z: /f /v

mode 80,30
echo.
echo.
title OHANA TECHNICAL PANEL MAINTENANCE ADVANCED 2018 FAST WORK
echo LOADING... ûûûûûûûûûûûûûûûûûûûûûûûûûûûû START...%%
pause

start /WAIT %windir%\system32\dfrgui.exe C: /a /F /v /s /q

echo.
echo.
echo ##@.@## Concluído-GOOD WORK-OHANA 2018!##@.@##
echo Loading COMPLETED ûûûûûûûûûûûûûûûûûûûûûûûûûûûûû 100%%
echo.

cls
:menu
cls
color F
DATE /T 
echo.
TIME /t
echo.

echo Computador: %computername%        Usuario: %username%


echo.       
echo            MENU TAREFAS
echo  ==================================
echo * 1. Esvaziar a Lixeira            * 
echo * 2. Fazer Backup                  *
echo * 3. Escanear Disco Local CHKDSK   *
echo * 4. Painel de Controle EXIBIR     *
echo * 5. limpeza cookie                *
echo * 6. Sair                          * 
echo  ==================================

set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3
if %opcao% equ 4 goto opcao4
if %opcao% equ 5 goto opcao5
if %opcao% equ 6 goto opcao6
if %opcao% GEQ 7 goto opcao7

:opcao1
cls
%windir%\system32\cleanmgr.exe
echo ==================================
echo *      Lixeira Esvaziada          *
echo ==================================
pause
goto menu

:opcao2
cls
echo off
set dia=%date:~4,2%
set mes=%date:~7,2%
if %mes%==01 set mes=Jan
if %mes%==02 set mes=Fev
if %mes%==03 set mes=Mar
if %mes%==04 set mes=Abr
if %mes%==05 set mes=Mai
if %mes%==06 set mes=Jun
if %mes%==07 set mes=Jul
if %mes%==08 set mes=Ago
if %mes%==09 set mes=Set
if %mes%==10 set mes=Out
if %mes%==11 set mes=Nov
if %mes%==12 set mes=Dez
set ano=%date:~10,4%
set hora=%time:~0,2%
if "%hora:~0,1%"==" " set hora=0%time:~1,1%
set minuto=%time:~3,2%

md "C:\Backups\%dia%-%mes%-%ano%"

set pasta_origem=C:\users
set pasta_destino=C:\Backups\%dia%-%mes%-%ano%

xcopy /e /c /h "%userprofile%\*.*" "%C:\Backups\%dia%-%mes%-%ano% %"

cls
stop
echo ==================================
echo *      Backup concluido           *
echo ==================================
pause
goto menu

:opcao3
cls
echo =================================================
echo *     Escaneamento de disco COM REPARAÇÃO    *
echo =================================================
chkdsk c: /R /F
pause
goto menu

:opcao4
cls
control.exe
pause
goto menu

:opcao5
cls

@ECHO OFF

:START
cls
%homedrive%
cd %USERPROFILE%
cd..
set profiles=%cd%

for /f "tokens=* delims= " %%u in ('dir /b/ad') do (
!!!!!!!!!!!!!!!!
cls
title Deletando %%u COOKIES. . .
if exist "%profiles%\%%u\cookies" echo Deletando....
if exist "%profiles%\%%u\cookies" cd "%profiles%\%%u\cookies"
if exist "%profiles%\%%u\cookies" del *.* /F /S /Q /A: R /A: H /A: A

cls
title Deletando %%u Temp Files. . .
if exist "%profiles%\%%u\Local Settings\Temp" echo Deletando....
if exist "%profiles%\%%u\Local Settings\Temp" cd "%profiles%\%%u\Local Settings\Temp"
if exist "%profiles%\%%u\Local Settings\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\Local Settings\Temp" rmdir /s /q "%profiles%\%%u\Local Settings\Temp"

cls
title Deletando %%u Temp Files. . .
if exist "%profiles%\%%u\AppData\Local\Temp" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Temp" cd "%profiles%\%%u\AppData\Local\Temp"
if exist "%profiles%\%%u\AppData\Local\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Temp" rmdir /s /q "%profiles%\%%u\AppData\Local\Temp"

cls
title Deletando %%u Temporary Internet Files. . .
if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" echo Deletando....
if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" cd "%profiles%\%%u\Local Settings\Temporary Internet Files"
if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\Local Settings\Temporary Internet Files" rmdir /s /q "%profiles%\%%u\Local Settings\Temporary Internet Files"

cls
title Deletando %%u Temporary Internet Files. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\Temporary Internet Files"

cls
title Deletando %%u WER Files. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\WER\ReportArchive"


cls
title Deletando %Systemroot%\Temp
if exist "%Systemroot%\Temp" echo Deletando....
if exist "%Systemroot%\Temp" cd "%Systemroot%\Temp"
if exist "%Systemroot%\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%Systemroot%\Temp" rmdir /s /q "%Systemroot%\Temp"

cls
title Deletando %SYSTEMDRIVE%\Temp
if exist "%SYSTEMDRIVE%\Temp" echo Deletando....
if exist "%SYSTEMDRIVE%\Temp" cd "%SYSTEMDRIVE%\Temp"
if exist "%SYSTEMDRIVE%\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%SYSTEMDRIVE%\Temp" rmdir /s /q "%Systemroot%\Temp"

cls
title Deletando %%u FIREFOX TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" cd "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles"
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" rmdir /s /q "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles"

cls
title Deletando %%u CHROME TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" cd "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache"
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache"

cls
title Deletando %%u EDGE TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache"

cls
title Deletando %%u EDGE COOKIES. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies"

cls
title Deletando %%u RDP TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" cd "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache"

cls
title Deletando %%u OPERA TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" cd "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache"
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Caches" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache"


cls
title Deletando %%u VIVALDI TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" cd "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache"
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache"

)

cls
goto END


:END
exit
if exist "%SYSTEMDRIVE%\Temp" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%SYSTEMDRIVE%\Temp" rmdir /s /q "%Systemroot%\Temp"

cls
title Deletando %%u FIREFOX TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" cd "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles"
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles" rmdir /s /q "%profiles%\%%u\AppData\Local\Mozilla\Firefox\Profiles"

cls
title Deletando %%u CHROME TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" cd "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache"
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Google\Chrome\User Data\Default\Cache"

cls
title Deletando %%u EDGE TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCache"

cls
title Deletando %%u EDGE COOKIES. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" cd "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Windows\INetCookies"

cls
title Deletando %%u RDP TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" cd "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache"
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Microsoft\Terminal Server Client\Cache"

cls
title Deletando %%u OPERA TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" cd "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache"
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Caches" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Opera Software\Opera Next\Cache"


cls
title Deletando %%u VIVALDI TEMP. . .
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" echo Deletando....
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" cd "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache"
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" del *.* /F /S /Q /A: R /A: H /A: A
if exist "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache" rmdir /s /q "%profiles%\%%u\AppData\Local\Vivaldi\User Data\Default\Cache"

)

cls
goto END
pause
exit



pause
goto menu

:opcao6
cls
exit

:opcao7
echo ==============================================
echo * Opcao Invalida! Escolha outra opcao do menu*
echo * pressione qualquer tecla para recomeçar    *
echo ==============================================
pause
goto menu

pause >nul
@echo pressione qualquer tecla para recomeçar
