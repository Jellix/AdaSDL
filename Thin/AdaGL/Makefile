.PHONY: all clean cleandist bin conf2w32 conf2x11 lib help


help:
	@echo "***********************************************************************"
	@echo "* make [all] [clean] [distclean] [conf2x11 | conf2w32] [C_To_StdCall] *"
	@echo "***********************************************************************"

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
	for F in gl_h.ads glext_h.ads glu_h.ads stddef_h.ads stdint_h.ads adagl.ads adagl.adb; do \
	sed -E 's/pragma[[:space:]]+Import[[:space:]]*[(][[:space:]]*C[[:space:]]*,/pragma Import \(StdCall,/Ig' GL_x11/$$F > GL_w32/$$F; \
	echo $$F ; \
	done

conf2w32:
	rm -f make.conf
	rm -f -R src/*
	cp -R GL_w32/* src/

