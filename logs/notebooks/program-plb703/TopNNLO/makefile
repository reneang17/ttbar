LOCAL_LIB_DIR = $(LOCAL_DIR)/lib
Cuba_VERSION = 2

FC = gfortran

################################################################################

F77 = $(FC)
F90 = $(FC)
F77FLAGS = -O -ffixed-line-length-none
F90FLAGS = -O
F77FLAGS += -L$(LOCAL_LIB_DIR) -L.
F90FLAGS += -L$(LOCAL_LIB_DIR) -L.
FFLAGS = $(F77FLAGS)
export FC F77 F77FLAGS F90 F90FLAGS FFLAGS

.PHONY: default force clean

EXTLIBS = -lcuba -lLHAPDF

INTLIBS = libmymathlib.a

LIB = libTopPair.a

OBJS = Integrate_Cuba$(Cuba_VERSION).o TopVar.o IntVar.o TopHSqq.o TopHSgg.o TopNNLO.o

TARGET = $(LIB) $(INTLIBS) RunTop

default: RunTop

$(LIB): $(LIB)($(OBJS))
	ranlib $(LIB)

%.o: %.f90
	$(F90) $(F90FLAGS) -c -o $@ $<

RunTop: RunTop.f90 $(INTLIBS) $(LIB)
	$(F90) $(F90FLAGS) -o $@ $< $(LIB) $(INTLIBS) $(EXTLIBS)

libmymathlib.a: force
	make -C mymathlib

clean:
	$(RM) *.o *.mod $(TARGET)
