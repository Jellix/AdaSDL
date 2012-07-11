Install Gnat 2012 in your system.

place  "supportFilesW32\devel\bin" and "supportFilesW32\runtime\bin"
in your system PATH.

Open a console in the Thin directory and:

create the environment variable: DE=penWin32
--------------------------------
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
