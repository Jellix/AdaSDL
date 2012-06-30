INC+=-I../../AdaSDL

include ../../make.conf

NAMES= eventrecsize test_enumerations test_endianess

all: $(NAMES)

eventrecsize: eventrecsize.adb
	gnatmake -O3 -gnaty -gnatnfvU $@  $(INC) -largs $(LIBS)

test_enumerations: test_enumerations.adb
	gnatmake -O3 -gnaty -gnatnfvU $@  $(INC) -largs $(LIBS)

test_endianess: test_endianess.adb
	gnatmake -O3 -gnaty -gnatnfvU $@  $(INC) -largs $(LIBS)

clean:
	rm -f *.o *.ali

cleandist: clean
	rm -f $(NAMES) $(NAMES:=.exe)
