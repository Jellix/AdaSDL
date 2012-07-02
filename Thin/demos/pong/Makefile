
include ../../make.conf

all:pong

.PHONY: pong

pong:
	gprbuild pong_demo.gpr

cleandist: cleanexec

clean:
	gprclean -c pong_demo.gpr

cleanexec:
	gprclean pong_demo.gpr

