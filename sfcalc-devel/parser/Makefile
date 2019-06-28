#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------

# include and libraries
INCLUDE=-I$(HOME)/utils/libraries/heplib 
#LIBRARIES +=

SRC =  parser.cc
 
OBJ = $(patsubst %.cc,%.o,$(SRC))
DEPS = $(patsubst %.cc,%.d,$(SRC))
EXE =  $(patsubst %.cc,%,$(SRC))

CXX=g++
CCC=gcc
CXXFLAGS= -Wall -O3 -MMD -MP $(INCLUDE)

all:	$(EXE) 

parser: parser.o 
	$(CXX) $(CXXFLAGS) -o $@  $@.o $(LIBRARIES)

lib:
	make -C ../libint

clean:
	rm -fv $(OBJ) $(EXE) *.a *.d fromParser*

libclean:
	make clean -C ../libint

distclean:
	make distclean -C ../libint

%.o: %.cc 
	$(CXX) -c $(CXXFLAGS) -o $@ $(patsubst %.o, %.cc, $@)


# takes care of dependencies
-include ${DEPS}
