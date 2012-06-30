INC+=-I../../AdaSDL -I../../AdaGL/GL -I../../AdaSDL_mixer
include ../../make.conf

LESSONS=lesson01

all: $(LESSONS)

%:%.adb
	gnatmake -O3 -gnaty3abcefhiklmprtM90 -gnatnfvU -gnatwl\
		$(INC) $@ -largs $(LIBS)

cleandist: clean cleanlessons

clean:
	rm -f *.o  b~*.ad[bs] *.ali

cleanlessons:
	rm -f $(LESSONS:=$(EXE))

