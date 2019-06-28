#-----------------------------------------------------------------------------
#-----------------------------------------------------------------------------

## include and libraries
#INCLUDE = $(shell gsl-config --cflags)
#LIBRARIES+= $(shell gsl-config --libs-without-cblas)
#LIBRARIES+=-lgsl -lgslcblas


#-----------------------------------------------------------------------------
ifeq ($(findstring cyfronet, $(HOSTNAME)), cyfronet)
  CXX= ccache-swig g++
else
  CXX= ccache g++
endif

CXXFLAGS= -Wall -O3 -MMD -MP $(INCLUDE) -fPIC #-std=c++11 

OBJ:= $(patsubst %.cc,%.o,$(wildcard *_.cc))
DEPS:= $(patsubst %.cc,%.d,$(wildcard *_.cc))


all:	$(OBJ) libint.a

libint.a: $(OBJ)
	ar cru libint.a  $(OBJ)

clean:
	rm -fv $(OBJ) $(EXE) *.a *.d

distclean:
	make clean
	rm -fv fromParser* int* col*

%.o: %.cc 
	$(CXX) -c $(CXXFLAGS) -o $@ $(patsubst %.o, %.cc, $@)


# takes care of dependencies
-include ${DEPS}
