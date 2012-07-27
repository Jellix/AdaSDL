call WinInclude.cmd
@echo off
goto menu
:menu
echo ###################### MENU ####################################
echo What would you like to do? Make a choice (Select a Demo)
echo ----------------------------------------------------------------
echo "[0] Quit"
echo "[1] Setting Up An OpenGL Window; [2] Your First Polygon;"
echo "[3] Adding Color;  [4] Rotation; [5] 3D Shapes; [6] Texture Mapping;"
echo "[7] Texture Filters, Lighting & Keyboard Control; [8] Belnding;"
echo "[9] Moving Bitmaps In 3D Space"  [a] Loading and Moving Through A 3D World"
:choice
set /P C=[0,1,2,3,4,5,6,7,8,9,a]?
echo ###############################################################
if "%C%"=="a" goto Lesson10
if "%C%"=="9" goto Lesson09
if "%C%"=="8" goto Lesson08
if "%C%"=="7" goto Lesson07
if "%C%"=="6" goto Lesson06
if "%C%"=="5" goto Lesson05
if "%C%"=="4" goto Lesson04
if "%C%"=="3" goto Lesson03
if "%C%"=="2" goto Lesson02
if "%C%"=="1" goto Lesson01
if "%C%"=="0" goto quit
goto choice

:Lesson01
cd demos\NeHe
lesson01
cd ..\..
goto menu

:Lesson02
cd demos\NeHe
lesson02
cd ..\..
goto menu

:Lesson03
cd demos\NeHe
lesson03
cd ..\..
goto menu

:Lesson04
cd demos\NeHe
lesson04
cd ..\..
goto menu

:Lesson05
cd demos\NeHe
lesson05
cd ..\..
goto menu

:Lesson06
cd demos\NeHe
lesson06
cd ..\..
goto menu

:Lesson07
cd demos\NeHe
lesson07
cd ..\..
goto menu

:Lesson08
cd demos\NeHe
lesson08
cd ..\..
goto menu

:Lesson09
cd demos\NeHe
lesson09
cd ..\..
goto menu


:Lesson10
cd demos\NeHe
lesson10
cd ..\..
goto menu

:quit
exit
:end
