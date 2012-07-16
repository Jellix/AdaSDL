
echo off
set DRIVE=%~d0
echo %DRIVE%

SET SUBDIR=%~dp0
ECHO %SUBDIR%

rem -- If you copy the pen files to the
rem -- file system (for example) for use there
rem -- you must change de BASE directory.

rem -- elsewhere:
rem set BASEdir=%DRIVE%\PENS\AdaPen

rem -- in the root of the pen:
set BASEdir=%DRIVE%

set GITTOOLS=%BASEdir%\local\Git\bin;

rem -- binary files *.dll and *.exe for imediate use
rem -- allways check for any virus.
set TOOLSPATH=%SUBDIR%supportFilesW32\devel\bin
set DLLSPATH=%SUBDIR%supportFilesW32\runtime\bin

rem -- If you have a nonstandard gnat installation
rem -- adapt the next line. Here I have gnat on a 
rem -- pen inside directory \local
set GNATBINs=%BASEdir%\local\GNAT\2012\bin

PATH=%GNATBINS%;%TOOLSPATH%;%DLLSPATH%;%GITTOOLS%;%PATH%

rem -- This environmen variable is used in gprbuild
rem -- in order to adapt to the portable environment.
set DE=penWin32

rem -- Opens the console for use with make or gpr.
rem -- and for execution of some applications

echo .
echo ##############################################################
echo #  You'll have more features using Thin/WinDevelConsole.cmd ##
echo ##############################################################
echo .

cmd /e

