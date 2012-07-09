SET SUBDIR=%~dp0
ECHO %SUBDIR%

set DRIVE=%~d0
echo %DRIVE%

rem -- binary files *.dll and *.exe for imediate use
rem -- allways check for any virus.
set TOOLSPATH=%SUBDIR%supportFilesW32\devel\bin
set DLLSPATH=%SUBDIR%supportFilesW32\runtime\bin

rem -- If you have a nonstandard gnat installation
rem -- adapt the next line. Here I have gnat on a 
rem -- pen inside directory \local
PATH=%DRIVE%\local\GNAT\2012\bin;%TOOLSPATH%;%DLLSPATH%;%PATH%

rem -- This environmen variable is used in gprbuild
rem -- in order to adapt to the portable environment.
set DE=penWin32

rem -- Opens the console for use with make or gpr.
rem -- and for execution of some applications
cmd /e

