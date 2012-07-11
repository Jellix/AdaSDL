
all : bind

help:
	@echo "***********************************************"
	@echo "* make [all] [clean] [distclean]              *"
	@echo "***********************************************"

lib: bind

bind:
	make -C src

clean:
	make -C src clean

cleandist: clean

conf2w32:
	rm -f make.conf
	rm -f -R src/*
	cp -R GL_w32/* src/

conf2x11:
	rm -f make.conf
	rm -f -R src/*.adb src/*.ads src/Makefile
	cp -R GL_x11/* src/

