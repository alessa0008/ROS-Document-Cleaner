@echo off
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit)
TITLE AlessaDocument Cleaner
COLOR F0
SET NEWLINE=^& echo.
FIND /C /I "appdump.x.netease.com" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	appdump.x.netease.com>>%WINDIR%\System32\drivers\etc\hosts
FIND /C /I "appdump.x.netease.com/upload" %WINDIR%\system32\drivers\etc\hosts
IF %ERRORLEVEL% NEQ 0 ECHO %NEWLINE%^127.0.0.1	appdump.x.netease.com/upload>>%WINDIR%\System32\drivers\etc\hosts
cd "%TEMP%\AlessaDocument"
del *.alessa
:a
CLS
setlocal enableextensions >nul 2>nul
set count=0
for %%x in (%TEMP%\AlessaDocument\*.alessa) do set /a count+=1
echo ..:: AlessaDocument Cleaner ::..
echo    Use this when using cheat
echo __________________________________________
echo Progress :
if not exist "%TEMP%\AlessaDocument" mkdir %TEMP%\AlessaDocument
if not exist "%TEMP%\AlessaDocument" echo CANNOT FOUND ROS FOLDER
if exist %TEMP%\AlessaDocument echo AlessaDocument Cleaner is Running
ren "C:\ros\Documents\gm*" "*.alessa" >nul 2>nul 
move /Y C:\ros\Documents\*.alessa* %TEMP%\AlessaDocument >nul 2>nul
echo You got %count% report , don't make it too many report to your account 
echo www.facebook.com/SersanCopo
echo __________________________________________
echo        Discord : alessa#0008
if exist %TEMP%\AlessaDocument echo          ..::WORKING::..
@timeout /t 1 /nobreak > nul
goto :a