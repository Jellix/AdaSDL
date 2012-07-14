echo off
echo .
echo ########################################################
echo # SPECIAL CONSOLE FOR USE WITH AdaSDL ENVIRONMENT      #
echo ########################################################
echo .
call WinInclude.cmd
@echo off
goto menu
:menu
echo ###################### MENU ####################################
echo What would you like to do? Make a choice
echo ----------------------------------------------------------------
echo [0] Quit;      [1] Configure for Windows;   [2] Goto console;
echo [3] Compile everything [4] Show demos menu; [5] Start GnatGPS
echo [6] Clean intermediary files;  [7] Clean all generated files
:choice
set /P C=[0,1,2,3,4,5,6,7]?
echo ###############################################################
if "%C%"=="7" goto Cleandist
if "%C%"=="6" goto Clean
if "%C%"=="5" goto GnatGPS
if "%C%"=="4" goto ShowDemosMenu
if "%C%"=="3" goto Compile
if "%C%"=="2" goto Console
if "%C%"=="1" goto Configure
if "%C%"=="0" goto quit
goto choice

:Cleandist
make cleandist
goto menu

:Clean
make clean
goto menu

:GnatGPS
start gps
goto menu

:Configure
make conf2w32
goto menu

:Compile
make all
goto menu

:ShowDemosMenu
start WinMenuDemos.cmd
goto menu

:Console
cmd /e
exit

:quit
exit
:end

