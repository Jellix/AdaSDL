
help:
	@echo "***********************************************************************"
	@echo "* make [all] [clean]                                                  *"
	@echo "***********************************************************************"

include ../make.conf

all:
	rm -f compile
	gnatmake -O3 -gnaty3abcefhiklmprstM90 -gnatnfvU -gnatwl\
		$(INC) compile -largs $(LIBS)
	gnatxref -v *.ads > tags
	ar cru libadasdl.a *.o
	ranlib libadasdl.a
		
clean:
	rm -f compile$(EXE)  b~*.ad[bs] *.o *.ali libadasdl.a tags
cleandist: clean
