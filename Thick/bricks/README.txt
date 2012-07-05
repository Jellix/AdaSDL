Building instructions:

You need the following to build bricks

Obtainable at http://www.libsdl.org
SDL libraries
SDL_Image libraries
SDL_Mixer libraries

Obtainable at http://sourceforge.net/projects/adasdl/
AdaSDL Thin binding

via CVS (and this distribution)
AdaSDL Thick binding

Follow the AdaSDL Thin binding setup instructions
Put the AdaSDL Thick binding into your library path

type something like

gnatmake bricks -largs -lSDL -lSDL_Image -lSDL_mixer


Playing instructions:

Moved the mouse to move the paddle
Press 'esc' to quit.
Press 'p' to pause
press '-' to slow down the game
press '+' to speed up the game 