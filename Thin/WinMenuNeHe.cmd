call WinInclude.cmd
@echo off
goto menu
:menu
echo ###################### MENU ####################################
echo What would you like to do? Make a choice (Select a Demo)
echo ----------------------------------------------------------------
echo [0] Quit
echo [1] Setting Up An OpenGL Window; [2] Your First Polygon
echo [3] Adding Color;  [4] Rotation; [5] 3D Shapes
:choice
set /P C=[0,1,2,3,4,5]?
echo ###############################################################
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

:quit
exit
:end
