.PHONY: all clean cleandist bin conf2w32 conf2x11 lib help

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

cleandist distclean: clean


conf2x11:
	rm -f make.conf
	rm -f -R src/*.adb src/*.ads src/Makefile
	cp -R GL_x11/* src/

C_To_StdCall:
	sed 's/pragma Import [(]C,/pragma Import \(StdCall,/Ig' GL_x11/gl_h.ads > GL_w32/gl_h.ads
	sed 's/pragma Import [(]C,/pragma Import \(StdCall,/Ig' GL_x11/glu_h.ads > GL_w32/glu_h.ads
	sed 's/pragma Import [(]C,/pragma Import \(StdCall,/Ig' GL_x11/adagl.adb > GL_w32/adagl.adb
	sed 's/pragma Import [(]C,/pragma Import \(StdCall,/Ig' GL_x11/adagl.ads > GL_w32/adagl.ads

	
conf2w32:
	rm -f make.conf
	rm -f -R src/*
	cp -R GL_w32/* src/

