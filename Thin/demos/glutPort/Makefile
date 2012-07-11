
default:
	@echo "make {all | cleandist}"

all:
	make -C book
	make -C examples

clean:
	make -C book clean
	make -C examples clean

cleandist distclean:
	make -C book cleandist
	make -C examples cleandist
