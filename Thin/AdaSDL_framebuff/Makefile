INC+=-I../AdaSDL
include ../make.conf

default: all

all:framebuff

framebuff:
	rm -f compile
	gnatmake -O3 -gnaty3abcefhiklmprstM90 -gnatnfvU -gnatwl\
		$(INC) compile -largs $(LIBS)

clean:
	rm -f compile$(EXE)  b~*.ad[bs]

cleandist: clean
	rm -f *.o *.ali

