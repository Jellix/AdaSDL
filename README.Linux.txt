In your linux distribution install:

gnat 4.6+ (I use gnat 2012)
gnat-gps

libsdl 1.2+
libsdl-mixer
libsdl-image
libsdl-ttf
freeglut

Ubuntu 14.10 example:
  sudo apt-get install libsdl1.2-dev libsdl-mixer1.2-dev libsdl-image1.2-dev libsdl-ttf2.0-dev freeglut3-dev

2. Go to Thin/
3. Execute PosixDevelConsole.sh
4. Use the options presented there.

-------------------------------------------
OR
2. ----------------------------------------

Use 1
    Open a console in directory Thin/
    do  -–>         make conf2x11 (just once)
    followed by --> make all

Use 2
    Open a console in directory Thin/
    do  -–>   make conf2x11 (just once)
    do --->   gps   <-- and use the IDE normally

Things to see:
   Thin/tutorials directory with very basic examples.
   Thin/demos directory with more complex examples.

extras:
   make <--- to see the menu with other options.

Have fun

AMFVargas.

