
Visiting a friend - which was a user of Windows - and in order to 
quickly demonstrate the advantages of git, ada, gnat, gps, etc 
we've created a portable pen for personal use anywhere on machines
with this family of OSes.

During the process we decided to add the possibility of using the 
AdaSDL development tree out of the box directly from the pen (or 
from a copy of the pen on HD the file system).

------------------------------------------
Pen Layout

/local/
   GNAT        <-- you have to paste it here after copying from a normal installation
      2012
         ... 
   Git         <-- (OPTIONAL) you have to paste it here after copying from a normal installation
      ...
   prog_Ada    <- make directory (optional)
      adasdl   <-- Uncompressed or from git clone
          …
          ...

--------------------------------
Use 1
    in --> /local/prog_Ada/adasdl/Thin
    execute--> console.cmd
    inside de console
    do  -–>   make conf2w32
    then do --> make all

Use 2
    in --> /local/prog_Ada/adasdl/Thin
    execute--> console.cmd
    inside de console
    do --> gps   <-- and use the IDE normally.

Have fun

AMFVargas.
