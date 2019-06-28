#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------


# PREC128 = quadrupole, PREC64 = double
PRECISION=PREC128

VERSION=CUBA4_2
# define relevant paths
CUBADIR=$(HOME)/heptools/Cuba-4.2
LIBINTDIR=../libint
LIBINT=$(LIBINTDIR)/libint.a
#INCLUDE = $(shell gsl-config --cflags)
#LIBRARIES+= $(shell gsl-config --libs-without-cblas)
#LIBRARIES+=-lgsl -lgslcblas

# include and libraries
INCLUDE += -I$(CUBADIR)/include -I$(LIBINTDIR)

ifeq ($(PRECISION),PREC128)
  LIBRARIES += -lquadmath -L$(CUBADIR)/lib -lcubaq -L$(LIBINTDIR) -lint
else
  LIBRARIES += -L$(CUBADIR)/lib -lcuba -L$(LIBINTDIR) -lint
endif



#SRC =  functestq.cc
SRC =  sfcalc.cc functestq.cc
 
OBJ = $(patsubst %.cc,%.o,$(SRC))
DEPS = $(patsubst %.cc,%.d,$(SRC))
EXE =  $(patsubst %.cc,%,$(SRC))

CXX=g++
CXXFLAGS= -Wall -O3 -MMD -MP $(INCLUDE) -fPIC -D $(VERSION) -D $(PRECISION)


all:	$(EXE) 

sfcalc: sfcalc.o $(LIBINT)
	$(CXX) $(CXXFLAGS) -o $@ $@.o $(LIBRARIES)
ifeq ($(PRECISION),PREC128)
	mv sfcalc sfcalcq
endif


functestq: functestq.o $(LIBINT)
	$(CXX) $(CXXFLAGS) -o $@ $@.o $(LIBRARIES)


clean:
	rm -fv $(OBJ) $(EXE) *.a *.d

%.o: %.cc 
	$(CXX) -c $(CXXFLAGS) -o $@ $(patsubst %.o, %.cc, $@)


# takes care of dependencies
-include ${DEPS}
