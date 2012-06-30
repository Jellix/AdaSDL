INC+=-I../../../AdaSDL -I../../../AdaGL/GL -I../../../AdaSDL_mixer
include ../../../make.conf

all: cleangenericgls genericgls

%:%.adb
	gnatmake -O3 -gnaty3abcefhiklmprtM90 -gnatnfvU -gnatwl\
		$(INC) $@ -largs $(LIBS)

cleandist: clean cleangenericgls

clean:
	rm -f *.o  b~*.ad[bs] *.ali

cleangenericgls:
	rm -f genericgls$(EXE)
