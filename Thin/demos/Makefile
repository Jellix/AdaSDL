
default:
	@echo "make { all | cleandist}"

all:
	make -C glutPort all
	make -C gears all
	make -C AdaSDLstandard all
	make -C framebuff all
	make -C NeHe all
	make -C pong all

gnathtml:
	make -C AdaSDLstandard gnathtml
cleandist: 
	make -C glutPort cleandist
	make -C gears cleandist
	make -C AdaSDLstandard cleandist
	make -C framebuff cleandist
	make -C NeHe cleandist
	make -C pong cleandist
