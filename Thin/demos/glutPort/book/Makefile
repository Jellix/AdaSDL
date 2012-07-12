
NAME=book

.PHONY: all clean cleandist distclean

all:
	gprbuild $(NAME).gpr -largs $(LIBS)

clean:
	gprclean -c $(NAME).gpr

cleandist distclean:
	gprclean $(NAME).gpr

