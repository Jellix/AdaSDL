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
echo "[3] Adding Color;  [4] Rotation"
echo "Choose: [0,1,2,3,4]?"
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
        *) break ;;
   esac 
   echo "press RETURN for menu"
   read key
done
exit 0