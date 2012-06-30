INC+=-I../../AdaSDL -I../../AdaGL/GL -I../../AdaSDL_mixer
include ../../make.conf

all: gears

.PHONY: gears
gears:
	gnatmake -O3 -gnaty3abcefhiklmprtM90 -gnatnfvU -gnatwl\
		$(INC) $@ -largs $(LIBS)

cleandist: clean cleangears

clean:
	rm -f *.o  b~*.ad[bs] *.ali

cleangears:
	rm -f gears$(EXE)
