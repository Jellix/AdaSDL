.PHONY: all clean cleandist distclean default

default:
	@echo "make {all | clean}"

all:
	make -C genericGL all
	make -C genericGLS all

clean:
	make -C genericGL clean
	make -C genericGLS clean

cleandist distclean: 
	make -C genericGL cleandist
	make -C genericGLS cleandist
