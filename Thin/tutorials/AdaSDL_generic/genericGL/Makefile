INC+=-I../../../AdaSDL -I../../../AdaGL/GL -I../../../AdaSDL_mixer
include ../../../make.conf

all: cleangenericgl genericgl

%:%.adb
	gnatmake -O3 -gnaty3abcefhiklmprtM90 -gnatnfvU -gnatwl\
		$(INC) $@ -largs $(LIBS)

cleandist: clean cleangenericgl

clean:
	rm -f *.o  b~*.ad[bs] *.ali

cleangenericgl:
	rm -f genericgl$(EXE)

