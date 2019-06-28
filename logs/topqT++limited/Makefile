#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------

LHAPDFVER=5
#DCOMPMATH=-DCOMPMATH

# define relevant paths

ifeq ($(LHAPDFVER),5)
  LHAPDFDIR=$(HOME)/heptools/lhapdf-5.9.1
  DLHAPDFVER=-DLHAPDFVER5
endif
ifeq ($(LHAPDFVER),6)
  LHAPDFDIR=$(HOME)/heptools/LHAPDF-6.1.6
  DLHAPDFVER=-DLHAPDFVER6
endif

## laptop -----------------------------------------------------------------
#ifeq ($(shell hostname), grzalka)
#  ifeq ($(LHAPDFVER),5)
#    LHAPDFDIR=$(HOME)/heptools/lhapdf-5.9.1
#    DLHAPDFVER=-DLHAPDFVER5
#  endif
#  ifeq ($(LHAPDFVER),6)
#    LHAPDFDIR=$(HOME)/heptools/LHAPDF-6.1.6
#    DLHAPDFVER=-DLHAPDFVER6
#  endif
## lxplus -----------------------------------------------------------------
#else
#  ifeq ($(LHAPDFVER),5)
#    LHAPDFDIR=$(HOME)/workspace/heptools/lhapdf-5.9.1
#    DLHAPDFVER=-DLHAPDFVER5
#  endif
#  ifeq ($(LHAPDFVER),6)
#    LHAPDFDIR=$(HOME)/heptools/LHAPDF-6.1.4
#    DLHAPDFVER=-DLHAPDFVER6
#  endif
#endif


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
COMMONSRC = soft.cc hardqq.cc hardgg.cc hsqq.cc hsgg.cc TopqT.cc 
COMMONOBJ = $(patsubst %.cc,%.o,$(COMMONSRC))
COMMONDEPS = $(patsubst %.cc,%.d,$(COMMONSRC))

# files related to source files
SRC = topqT++.cc
OBJ = $(patsubst %.cc,%.o,$(SRC))
DEPS = $(patsubst %.cc,%.d,$(SRC))
EXE =  $(patsubst %.cc,%,$(SRC))

CXX=g++
CXXFLAGS= -g -Wall -O3 -MMD -MP $(INCLUDE)

all:	$(EXE) 
	

topqT++: topqT++.o $(COMMONOBJ)
	$(CXX) -o $@  $@.o $(COMMONOBJ) $(LIBRARIES)

clean:
	rm -fv $(OBJ) $(COMMONOBJ) $(EXE)
	rm -fv *.a *.d

%.o: %.cc
	$(CXX) -c $(CXXFLAGS) $(DLHAPDFVER) $(DCOMPMATH) -o $@ $(patsubst %.o, %.cc, $@)


-include ${COMMONDEPS} ${DEPS}
