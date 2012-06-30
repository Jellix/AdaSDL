
help:
	@echo "***********************************************************************"
	@echo "* make [all] [AdaSDL] [AdaTest] [framebuff] [cleandist] [gnathatml]   *"
	@echo "***********************************************************************"

all:
	make -C AdaTest all

cleandist:
	make -C AdaTest cleandist
	make -C bind_check cleandist
	
gnathtml:
	make -C stdtest gnathtml
	rm -f -R  ../AdaSDLhtml
	mv stdtest/html ../AdaSDLhtml

clean: cleandist
