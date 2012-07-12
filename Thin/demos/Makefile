.PHONY: all clean cleandist distclean

default:
	@echo "make { all | clean | cleandist}"

all:
	make -C glutPort all
	make -C gears all
	make -C AdaSDLstandard all
	make -C framebuff all
	make -C NeHe all
	make -C pong all

clean:
	make -C glutPort clean
	make -C gears clean
	make -C AdaSDLstandard clean
	make -C framebuff clean
	make -C NeHe clean
	make -C pong clean

cleandist: 
	make -C glutPort cleandist
	make -C gears cleandist
	make -C AdaSDLstandard cleandist
	make -C framebuff cleandist
	make -C NeHe cleandist
	make -C pong cleandist

