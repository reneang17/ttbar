#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------

VERSION=CUBA4_2

# define relevant paths
#LHAPDFDIR=$(HOME)/heptools/LHAPDF-6.1.6
#MYLIB=$(HOME)/utils/libraries
#HEPLIB=$(HOME)/utils/libraries/heplib
#CUBADIR=$(HOME)/tools/Cuba-4.2
CUBADIR=/Users/casadelosangeles/Applications/secdec_working_version/pySecDec-1.1/Cuba-4.2

# include and libraries
INCLUDE += -I$(CUBADIR) 
LIBRARIES += -L$(CUBADIR) -lcuba


SRC =  parser.cc sfcalc.cc
 
OBJ = $(patsubst %.cc,%.o,$(SRC))
DEPS = $(patsubst %.cc,%.d,$(SRC))
EXE =  $(patsubst %.cc,%,$(SRC))

CXX=g++
CCC=gcc
CXXFLAGS= -g -Wall -O3 -MMD -MP $(INCLUDE) -fPIC -std=c++11 -D $(VERSION)

INTOBJECTS:= $(patsubst %.cc,%.o,$(wildcard *_.cc))


all:	$(EXE) 

parser: parser.o 
	$(CXX) $(CXXFLAGS) -o $@  $@.o $(LIBRARIES)

sfcalc: sfcalc.o $(INTOBJECTS)
	$(CXX) $(CXXFLAGS) -o $@ $@.o $(LIBRARIES) $(INTOBJECTS)

clean:
	rm -fv $(OBJ) $(EXE) *.a *.d fromParser*

%.o: %.cc 
	$(CXX) -c $(CXXFLAGS) -o $@ $(patsubst %.o, %.cc, $@)


# takes care of dependencies
-include ${DEPS}
