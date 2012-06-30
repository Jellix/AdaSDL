INC+=-I../../../AdaSDL -I../../../AdaGL/GL -I../../../AdaSDL_mixer
include ../../../make.conf

EXECNAMES=abgr

EXECS=$(EXECNAMES:=$(EXE));

%:%.adb
	gnatmake -O3 -gnaty3abcefhiklmprtM90 -gnatnfvU -gnatwl\
		$(INC) $@ -largs $(LIBS)
default: abgr

clean:
	rm -f *.o  b~*.ad[bs] *.ali

cleandist: clean
	rm -f $(EXECS)

