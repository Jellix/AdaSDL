call WinInclude.cmd
@echo off
goto menu
:menu
echo ###################### MENU ####################################
echo What would you like to do? Make a choice (Select a Demo)
echo ----------------------------------------------------------------
echo [0] Quit
echo [1] Gears;      [2] Pong;     [3] Mixer Music;    [4] Mixer Wave
echo [5] Image Load; [6] True Type Font Demo (incomplete)
echo -------- Standard SDL demos ported do Ada ----------------------
echo ................... Visual demos ...............................
echo [7] Test Gl;     [8] Test Sprite;  [9] Test Alpha
echo [a] Test Bitmap; [b] Test Palette; [c] Test Window
echo [d] Test Window Manager; [e] Thread Window [f] Gray Window
echo ................... Boring Demos ...............................
echo [g] CheckKeys;      [h] TestCDRom; [i] TestError;   [j] TestThread
echo [k] TestJoystick;   [l] TestKeys;  [m] TestLock;    [n] TestSemaphore
echo [o] TestTimer;      [p] TestTypes; [q] TestVersion; [r] TestVideoInfo
echo [s] TortureThread ; [z] LoopWave ( CTRL-C to stop)
:choice
set /P C=[0,1,2,3,4,5,6,7,8,9,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,z]?
echo ###############################################################
if "%C%"=="z" goto LoopWave
if "%C%"=="s" goto TortureThread
if "%C%"=="r" goto TestVidInfo
if "%C%"=="q" goto TestVer
if "%C%"=="p" goto TestTypes
if "%C%"=="o" goto TestTimer
if "%C%"=="n" goto TestSem
if "%C%"=="m" goto TestLock
if "%C%"=="l" goto TestKeys
if "%C%"=="k" goto TestJoystick
if "%C%"=="j" goto TestThread
if "%C%"=="i" goto TestError
if "%C%"=="h" goto TestCDRom
if "%C%"=="g" goto CheckKeys
if "%C%"=="f" goto GrayWindow
if "%C%"=="e" goto ThreadWin
if "%C%"=="d" goto TestWM
if "%C%"=="c" goto TestWin
if "%C%"=="b" goto TestPalette
if "%C%"=="a" goto TestBitmap
if "%C%"=="9" goto TestAlpha
if "%C%"=="8" goto TestSprite
if "%C%"=="7" goto TestGl
if "%C%"=="6" goto TtfDemo
if "%C%"=="5" goto ImageDemo
if "%C%"=="4" goto MixerDemoWave
if "%C%"=="3" goto MixerDemoMusic
if "%C%"=="2" goto Pong
if "%C%"=="1" goto Gears
if "%C%"=="0" goto quit
goto choice

:Gears
cd demos\gears
echo Key-Up Key-Down Key-Left Key-Right
gears
cd ..\..
goto menu

:Pong
cd demos\pong
echo key-Up and Key-Down
pong_demo
cd ..\..
goto menu

:MixerDemoMusic
cd AdaSDL_mixer\demos
playmus data\helena.mp3
cd ..\..
goto menu

:MixerDemoWave
cd AdaSDL_mixer\demos
playwave data\sample.wav
cd ..\..
goto menu

:ImageDemo
cd AdaSDL_image\demos
showimage data\sample.bmp
cd ..\..
goto menu

:TtfDemo
cd AdaSDL_ttf\demos
echo Click randomly
showfont data\bullpen3.ttf
cd ..\..
goto menu

:TestGl
cd demos\AdaSDLstandard
testgl
cd ..\..
goto menu

:TestSprite
cd demos\AdaSDLstandard
testsprite
cd ..\..
goto menu

:TestAlpha
cd demos\AdaSDLstandard
echo Click and drag
testalpha
cd ..\..
goto menu

:TestBitmap
cd demos\AdaSDLstandard
echo Click randomly
testbitmap
cd ..\..
goto menu

:TestPalette
cd demos\AdaSDLstandard
testpalette
cd ..\..
goto menu

:TestWin
cd demos\AdaSDLstandard
testwin
cd ..\..
goto menu

:TestWM
cd demos\AdaSDLstandard
testwm
cd ..\..
goto menu

:GrayWindow
cd demos\AdaSDLstandard
echo Click to see rectangles of random sizes.
graywin
cd ..\..
goto menu

:ThreadWin
cd demos\AdaSDLstandard
threadwin
cd ..\..
goto menu

:CheckKeys
cd demos\AdaSDLstandard
echo Press several keys
checkkeys
cd ..\..
goto menu

:TestCDRom
cd demos\AdaSDLstandard
testcdrom
cd ..\..
goto menu

:TestError
cd demos\AdaSDLstandard
testerror
cd ..\..
goto menu

:TestThread
cd demos\AdaSDLstandard
testhread
cd ..\..
goto menu

:TestJoystick
cd demos\AdaSDLstandard
testjoystick
cd ..\..
goto menu

:TestKeys
cd demos\AdaSDLstandard
testkeys
cd ..\..
goto menu

:TestLock
cd demos\AdaSDLstandard
start testlock
cd ..\..
goto menu

:TestSem
cd demos\AdaSDLstandard
testsem 2
cd ..\..
goto menu

:TestTimer
cd demos\AdaSDLstandard
testtimer
cd ..\..
goto menu

:TestTypes
cd demos\AdaSDLstandard
testtypes
cd ..\..
goto menu

:TestVer
cd demos\AdaSDLstandard
testver
cd ..\..
goto menu

:TestVidInfo
cd demos\AdaSDLstandard
testvidinfo
cd ..\..
goto menu

:TortureThread
cd demos\AdaSDLstandard
torturethread
cd ..\..
goto menu

:LoopWave
cd demos\AdaSDLstandard
echo Ctrl-C to stop.
loopwave data\sample.wav
cd ..\..
goto menu
     
:quit
exit
:end
