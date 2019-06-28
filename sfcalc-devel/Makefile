#
# 
#

# -----------------------------------------------------------------------------
# installation directory
INSTALLDIR=
# -----------------------------------------------------------------------------

all:
	+make -C libint 
	+make -C sfcalc
clean:
	make clean -C libint
	make clean -C sfcalc
install:
	make install -C libint INSTALLDIR=$(INSTALLDIR)
	make install -C sfcalc INSTALLDIR=$(INSTALLDIR)
