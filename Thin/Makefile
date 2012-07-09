
help:
	@echo "***********************************************************************"
	@echo "* make [conf2w32] [conf2x11] [all] [bindings] [clean]                 *"
	@echo "*      [cleandist] [tbz2 [VERSION=version] [tgz [VERSION=version]]    *"
	@echo "*      [gnathatml]                                                    *"
	@echo "* conf2w32:       Prepare the system for compilation on windows       *"
	@echo "* conf2x11:       Prepare the system for compilation on X11           *"
	@echo "* all:            Compilation of the:  binding, GL, examples and test *"
	@echo "* bindings:       Compilation of the bind and GL files                *"
	@echo "* tbz2 [VERSION=version]: makes an AdaSDl<version>.tar.bz2            *"
	@echo "* tgz  [VERSION=version]: makes an AdaSDl<version>.tgz                *"
	@echo "* clean:          Clean bins, not configuration files                 *"
	@echo "* cleandist:      Clean bins and configuration  files                 *"
	@echo "* gnathtml :      Makes an HTML representation of the files           *"
	@echo "* alternatively you can cd to a directory and do a make there         *"
	@echo "***********************************************************************"

lib: bindings

tbz2:
	tar -Icvf AdaSDL_$(VERSION).tar.bz2 AdaSDL

tgz:
	tar -zcvf AdaSDL_$(VERSION).tgz AdaSDL

gnathtml:
	make -C demos/AdaSDLstandard gnathtml
	rm -f -R  ../AdaSDLhtml
	mv demos/AdaSDLstandard/html ../AdaSDLhtml

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

cleandist:
	make -C AdaSDL cleandist
	make -C demos cleandist
	make -C tests cleandist
	make -C tutorials cleandist

clean: cleandist

