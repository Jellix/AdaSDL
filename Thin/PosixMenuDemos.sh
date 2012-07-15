#!/bin/bash
# simple menu to do various functions

while [ answer != "0" ] 
do
clear
echo ###################### MENU ####################################
echo What would you like to do? Make a choice
echo "----------------------------------------------------------------"
echo "[0] Quit"
echo "[1] Gears;      [2] Pong;     [3] Mixer Music;    [4] Mixer Wave"
echo "[5] Image Load; [6] True Type Font Demo (incomplete)"
echo "-------- Standard SDL demos ported do Ada ----------------------"
echo "................... Visual demos ..............................."
echo "[7] Test Gl;     [8] Test Sprite;  [9] Test Alpha"
echo "[a] Test Bitmap; [b] Test Palette; [c] Test Window"
echo "[d] Test Window Manager; [e] Thread Window [f] Gray Window"
echo "................... Boring Demos ..............................."
echo "[g] CheckKeys;      [h] TestCDRom; [i] TestError;   [j] TestThread"
echo "[k] TestJoystick;   [l] TestKeys;  [m] TestLock;    [n] TestSemaphore"
echo "[o] TestTimer;      [p] TestTypes; [q] TestVersion; [r] TestVideoInfo"
echo "[s] TortureThread ; [z] LoopWave ( CTRL-C to stop)"
echo "Choose: [0,1,2,3,4,5,6,8,9,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,z]?"
echo ###############################################################
read -p " ?" answer
    case $answer in
       0) break ;;
       1) cd demos/gears
	  ./gears
	  cd ../..
       ;;
       2) cd demos/pong
	   ./pong_demo
	  cd ../..
       ;;
       3) cd AdaSDL_mixer/demos
	  ./playmus data/helena.mp3
	  cd ../..
       ;;
       4) cd AdaSDL_mixer/demos
	  ./playwave data/sample.wav
	  cd ../..
       ;;
       5) cd AdaSDL_image/demos
	  ./showimage data/sample.bmp
	  cd ../..
       ;;
       6) cd AdaSDL_ttf/demos
	  ./showfont data/bullpen3.ttf
	  cd ../..
       ;;
       7) cd demos/AdaSDLstandard
	  ./testgl
	  cd ../..
       ;;
       8) cd demos/AdaSDLstandard
	  ./testsprite
	  cd ../..
       ;;
       9) cd demos/AdaSDLstandard
	  echo "Click and drag"
	  ./testalpha
	  cd ../..
       ;;
       A|a) cd demos/AdaSDLstandard
	  echo "Click randomly"
	  ./testbitmap
	  cd ../..
       ;;
       B|b) cd demos/AdaSDLstandard
	  ./testpalette
	  cd ../..
       ;;
       C|c) cd demos/AdaSDLstandard
	  ./testwin
	  cd ../..
       ;;
       D|d) cd demos/AdaSDLstandard
	  ./testwm
	  cd ../..
       ;;
       E|e) cd demos/AdaSDLstandard
	  ./threadwin
	  cd ../..
       ;;
       F|f) cd demos/AdaSDLstandard
	    echo "Click to see rectangles of random sizes."
	  ./graywin
	  cd ../..
       ;;
       G|g) cd demos/AdaSDLstandard
	  ./checkkeys
	  cd ../..
       ;;
       H|h) cd demos/AdaSDLstandard
	  ./testcdrom
	  cd ../..
       ;;
       I|i) cd demos/AdaSDLstandard
	  ./testerror
	  cd ../..
       ;;
       J|j) cd demos/AdaSDLstandard
	  ./testhread
	  cd ../..
       ;;
       K|k) cd demos/AdaSDLstandard
	  ./testjoystick
	  cd ../..
       ;;
       L|l) cd demos/AdaSDLstandard
	  ./testkeys
	  cd ../..
       ;;
       M|m) cd demos/AdaSDLstandard
	  ./testlock
	  cd ../..
       ;;
       N|n) cd demos/AdaSDLstandard
	  ./testsem 2
	  cd ../..
       ;;
       O|o) cd demos/AdaSDLstandard
	  ./testtimer
	  cd ../..
       ;;
       P|p) cd demos/AdaSDLstandard
	  ./testtypes
	  cd ../..
       ;;
       Q|q) cd demos/AdaSDLstandard
	  ./testver
	  cd ../..
       ;;
       R|r) cd demos/AdaSDLstandard
	  ./testvidinfo
	  cd ../..
       ;;
       S|s) cd demos/AdaSDLstandard
	  ./torturethread
	  cd ../..
       ;;
       Z|z) cd demos/AdaSDLstandard
	  ./loopwave data/sample.wav
	  cd ../..
       ;;
       #4) break ;;
       *) break ;;
   esac 
   echo "press RETURN for menu"
   read key
done
exit 0