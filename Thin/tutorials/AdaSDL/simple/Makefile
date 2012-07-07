
NAME=simple

.PHONY: all go

all:
	gprbuild $(NAME).gpr

cleandist: cleanexec

clean:
	gprclean -c $(NAME).gpr

cleanexec:
	gprclean $(NAME).gpr

