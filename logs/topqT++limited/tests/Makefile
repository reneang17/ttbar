#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------

LHAPDFVER=5

# define relevant paths

# laptop -----------------------------------------------------------------
ifeq ($(shell hostname), grzalka)
  ifeq ($(LHAPDFVER),5)
    LHAPDFDIR=$(HOME)/heptools/lhapdf-5.9.1
    DLHAPDFVER=-DLHAPDFVER5
  endif
  ifeq ($(LHAPDFVER),6)
    LHAPDFDIR=$(HOME)/heptools/LHAPDF-6.1.6
    DLHAPDFVER=-DLHAPDFVER6
  endif
# lxplus -----------------------------------------------------------------
else
  ifeq ($(LHAPDFVER),5)
    LHAPDFDIR=$(HOME)/workspace/heptools/lhapdf-5.9.1
    DLHAPDFVER=-DLHAPDFVER5
  endif
  ifeq ($(LHAPDFVER),6)
    LHAPDFDIR=$(HOME)/heptools/LHAPDF-6.1.4
    DLHAPDFVER=-DLHAPDFVER6
  endif
endif


MYLIB=$(HOME)/utils/libraries

# include and libraries
INCLUDE += -I$(LHAPDFDIR)/include 
INCLUDE += -I$(MYLIB)
INCLUDE += $(shell gsl-config --cflags)
INCLUDE += -I$(HOME)/local/include
LIBRARIES += -L$(LHAPDFDIR)/lib -lLHAPDF
LIBRARIES += -L$(MYLIB)/heplib -lHepLib
LIBRARIES += -L$(HOME)/local/lib -lcln -lginac

# gsl
LIBRARIES+= $(shell gsl-config --libs)

# common objects
COMMONSRC = ../soft.cc ../hardqq.cc ../hardgg.cc
COMMONOBJ = $(patsubst %.cc,%.o,$(COMMONSRC))
COMMONDEPS = $(patsubst %.cc,%.d,$(COMMONSRC))

# files related to source files
SRC = hsfunctions.cc  polylogs.cc \
      softfunction.cc hardfunction.cc matrixmultiply.cc
OBJ = $(patsubst %.cc,%.o,$(SRC))
DEPS = $(patsubst %.cc,%.d,$(SRC))
EXE =  $(patsubst %.cc,%,$(SRC))

CXX=g++
CXXFLAGS= -g -Wall -O3 -MMD -MP $(INCLUDE)

all:	$(EXE)
	
polylogs: polylogs.o
	$(CXX) -o $@  $@.o $(LIBRARIES)

hsfunctions: hsfunctions.o $(COMMONOBJ)
	$(CXX) -o $@  $@.o $(COMMONOBJ) $(LIBRARIES)

softfunction: softfunction.o ../soft.o
	$(CXX) -o $@  $@.o ../soft.o $(LIBRARIES)

hardfunction: hardfunction.o ../hardqq.o ../hardgg.o
	$(CXX) -o $@  $@.o ../hardqq.o ../hardgg.o $(LIBRARIES)

matrixmultiply: matrixmultiply.o
	$(CXX) -o $@  $@.o $(LIBRARIES)

hsintegration: hsintegration.o  $(COMMONOBJ)
	$(CXX) -o $@  $@.o $(COMMONOBJ) $(LIBRARIES)

ciifunctions: ciifunctions.o $(COMMONOBJ)
	$(CXX) -o $@  $@.o $(COMMONOBJ) $(LIBRARIES)

clean:
	rm -fv $(OBJ) $(COMMONOBJ) $(EXE)
	rm -fv *.a *.d

%.o: %.cc
	$(CXX) -c $(CXXFLAGS) $(DLHAPDFVER) -o $@ $(patsubst %.o, %.cc, $@)


-include ${COMMONDEPS} ${DEPS}
