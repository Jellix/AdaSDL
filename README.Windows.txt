-------------------------------------------------------------------------
Easy way:

1. Install Gnat 2012 normally on your system.
2. Go to Thin/
3. Execute WinDevelConsole.cmd
4. Use the options presented there.

-------------------------------------------------------------------------
Hard way (If you don't want to use the portable environment).

1. Install Gnat 2012 in your system.

2. place  "supportFilesW32\devel\bin" and "supportFilesW32\runtime\bin"
in your system PATH.

3. Create the environment variable: DE=penWin32

4. --------------------------------
Use 1
    Open a console in /local/prog_Ada/adasdl/Thin
    do  -–>         make conf2w32 (just once)
    followed by --> make all

Use 2
    Open a console in /local/prog_Ada/adasdl/Thin
    do  -–>   make conf2w32 (just once)
    do --->   gps   <-- and use the IDE normally

Things to see:
   Thin/tutorials directory with very basic examples.
   Thin/demos directory with more complex examples.

extras:
   make <--- to see the menu with other options.

Have fun

AMFVargas.
