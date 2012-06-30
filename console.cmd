SET SUBDIR=%~dp0
ECHO %SUBDIR% 
set RUNTIMEBINSPATH=%SUBDIR%supportFilesW32\devel\bin
set RUNTIMELIBSPATH=%SUBDIR%supportFilesW32\runtime\bin
REM set MCPATH=c:\local\apps\mc
REM set MSYSPATH=C:\protected\CC++\msys\bin
REM set SEVENZIPPATH=C:\Programas\7-Zip

set PATH=%MCPATH%;%RUNTIMEBINSPATH%;%RUNTIMELIBSPATH%;%PATH%;%MSYSPATH%;%SEVENZIPPATH%
cmd /e
