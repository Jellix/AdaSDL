INC+=-I../../AdaSDL

include ../../make.conf

all: eventrecsize test_enumerations test_endianess

eventrecsize: eventrecsize.adb
	gnatmake -O3 -gnaty -gnatnfvU $@  $(INC) -largs $(LIBS)

test_enumerations: test_enumerations.adb
	gnatmake -O3 -gnaty -gnatnfvU $@  $(INC) -largs $(LIBS)

test_endianess: test_endianess.adb
	gnatmake -O3 -gnaty -gnatnfvU $@  $(INC) -largs $(LIBS)

clean:
	rm -f *.o *.ali

cleandist: clean
	rm -f test_enumerations test_endianess eventrecsize 
