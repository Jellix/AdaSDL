#!/bin/bash
# simple menu to do various functions

while [ answer != "0" ] 
do
clear
echo "###################### MENU ####################################"
echo "What would you like to do? Make a choice"
echo "----------------------------------------------------------------"
echo "[0] Quit;      [1] Configure for Linux/Unix; [2] Goto console;"
echo "[3] Compile everything [4] Show demos menu;  [5] Start GnatGPS"
echo "[6] Clean intermediary files;  [7] Clean all generated files"
echo "###############################################################"
echo "Choose: [0,1,2,3,4,5,6,7]"
echo "###############################################################"
read -p " ?" answer
    case $answer in
       0) break ;;
       1) make conf2x11
       ;;
       2) xterm
       ;;
       3) make all
       ;;
       4) ./PosixMenuDemos.sh
       ;;
       5) gps_exe &
       ;;
       6) make clean
       ;;
       7) make cleandist
       ;;
       *) break ;;
   esac 
   echo "press RETURN for menu"
   read key
done
exit 0