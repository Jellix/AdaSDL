#!/bin/bash
# simple menu to do various functions

while [ answer != "0" ]
do
clear
echo ###################### MENU ####################################
echo What would you like to do? Make a choice
echo "----------------------------------------------------------------"
echo "[0] Quit"
echo "[1] Setting Up An OpenGL Window; [2] Your First Polygon"
echo "[3] Adding Color;  [4] Rotation; [5] 3D Shapes; [6] Texture Mapping"
echo "[7] Texture Filters, Lighting & Keyboard Control; [8] Blending"
echo "[9] Moving Bitmaps In 3D Space"
echo "Choose: [0,1,2,3,4,5,6,7,8,9]?"
echo ###############################################################
read -p " ?" answer
    case $answer in
       0) break ;;
       1) cd demos/NeHe
	  ./lesson01
	  cd ../..
       ;;
       2) cd demos/NeHe
	   ./lesson02
	  cd ../..
       ;;
       3) cd demos/NeHe
	  ./lesson03
	  cd ../..
       ;;
       4) cd demos/NeHe
	  ./lesson04
	  cd ../..
       ;;
       5) cd demos/NeHe
	  ./lesson05
	  cd ../..
       ;;
       6) cd demos/NeHe
	  ./lesson06
	  cd ../..
       ;;
       7) cd demos/NeHe
	  ./lesson07
	  cd ../..
       ;;
       8) cd demos/NeHe
	  ./lesson08
	  cd ../..
       ;;
       9) cd demos/NeHe
	  ./lesson09
	  cd ../..
       ;;
        *) break ;;
   esac
   echo "press RETURN for menu"
   read key
done
exit 0
