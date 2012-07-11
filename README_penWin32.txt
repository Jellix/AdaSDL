
Visiting a friend - which was a user of Windows - and in order to 
quickly demonstrate the advantages of git, ada, gnat, gps, etc 
we've created a portable pen for personal use anywhere on machines
with this family of OSes (Win32).

During the process we decided to add the possibility of using the 
AdaSDL development tree out of the box directly from the pen (or 
from a copy of the pen on HD the file system).

------------------------------------------
Pen Layout

/local/
   GNAT        <-- you have to paste it here after copying from a normal installation
      2012     <-- For non portable installations just install and use gnat as ususal.
         ... 
   Git         <-- (OPTIONAL) you have to paste it here after copying from a normal installation
      ...      <-- For non portable installations just install and use git for windows. (OPTIONAL)
   prog_Ada    <- make this directory (optional)
      adasdl   <-- Uncompressed here from a file or from "git clone"
          …
          ...

--------------------------------
Use 1
    in --> /local/prog_Ada/adasdl/Thin
    execute--> console.cmd
    inside this special console
    do  -–>   make conf2w32
    then do --> make all

Use 2
    in --> /local/prog_Ada/adasdl/Thin
    execute--> console.cmd
    inside de console
    do  -–>   make conf2w32
    do --> gps   <-- and use the IDE normally.

Things to see:
   Thin/tutorials directory with very basic examples.
   Thin/demos directory with more complex examples.

extras:
   make <--- to see the menu with other options.

Have fun

AMFVargas.

