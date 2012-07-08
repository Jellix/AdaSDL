SET SUBDIR=%~dp0
ECHO %SUBDIR% 

set PATH=%SUBDIR%supportFilesW32\devel\bin;%PATH%
set PATH=%SUBDIR%supportFilesW32\runtime\bin;%PATH%

set LIBSPATH=-L%SUBDIR%supportFilesW32\devel\libs
rem LIBS=%LIBSPATH% -lopengl32 -lglu32 -lSDL -lSDL_mixer -lSDL_image -lSDL_ttf -lGLI -lGL
set LIBS=%LIBSPATH% -lopengl32 -lglu32 -lSDL.dll -lSDL_mixer -lSDL_image -lSDL_ttf

rem -- If you have a nonstandard gnat installation
rem -- uncomment and adapt the next line
PATH=%SUBDIR%..\..\GNAT\2012\bin;%PATH%

cmd /e
