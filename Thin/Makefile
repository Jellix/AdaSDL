
help:
	@echo "***********************************************************************"
	@echo "* make [conf2w32] [conf2x11] [all] [bindings] [clean] [cleandist]     *" 
	@echo "* conf2w32:       Prepare the system for compilation on windows       *"
	@echo "* conf2x11:       Prepare the system for compilation on X11           *"
	@echo "* all:            Compilation of the:  binding, GL, examples and test *"
	@echo "* bindings:       Compilation of the bind *.a *.lib and GL files      *"
	@echo "* clean:          Clean bins, not configuration files                 *"
	@echo "* cleandist:      Clean bins and configuration  files                 *"
	@echo "* alternatively you can cd to a directory and do a make there         *"
	@echo "***********************************************************************"

lib: bindings

default:
	@echo "make {conf2x11 | conf2w32 | all | libs | cleandist}"

conf2x11:
	make -C AdaGL conf2x11
	rm -f make.conf
	cp make.conf_x11 make.conf

conf2w32:
	make -C AdaGL conf2w32
	rm -f make.conf
	cp make.conf_w32 make.conf

bindings:
	make -C AdaSDL all
	make -C AdaSDL_mixer

all: bindings
	make -C demos all
	make -C tests all
	make -C tutorials all

libs:
	make -C AdaGL lib
	make -C AdaSDL lib

clean:
	make -C AdaSDL clean
	make -C demos clean
	make -C tests clean
	make -C tutorials clean

cleandist:
	make -C AdaSDL cleandist
	make -C demos cleandist
	make -C tests cleandist
	make -C tutorials cleandist

