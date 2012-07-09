
all : bind

help:
	@echo "***********************************************"
	@echo "* make [all] [clean] [distclean]              *"
	@echo "***********************************************"

lib: bind

bind:
	make -C src

tbz2:
	tar -Icvf ../AdaOpenGL_$(VERSION).tar.bz2 ../AdaOpenGL

tgz:
	tar -zcvf ../AdaOpenGL_$(VERSION).tgz ../AdaOpenGL

clean:
	make -C src clean

cleandist: clean

#cleandist:
#	rm -f -R src
#	rm -f make.conf

conf2w32:
	rm -f make.conf
	rm -f -R src/*
	cp -R GL_w32/* src/

conf2x11:
	rm -f make.conf
	rm -f -R src/*.adb src/*.ads src/Makefile
	cp -R GL_x11/* src/

