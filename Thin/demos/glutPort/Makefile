
default:
	@echo "make {all | cleandist}"


all:
	make -C book
	make -C examples

cleandist: distclean
distclean:
	make -C book cleandist
	make -C examples cleandist
