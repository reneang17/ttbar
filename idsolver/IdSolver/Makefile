CXX      = g++
LD       = g++
#CXXFLAGS = -I. -I../DiaGen -I../Utilities -ggdb
CXXFLAGS = -O3 -I. -I../DiaGen -I../Utilities
LDFLAGS  =
LIBS     = -lIdSolver -L../DiaGen -lDiaGen -L../Utilities -lUtilities \
           -lxqdbm -lqdbm
SRCS     = DB.cpp ResizableBuffer.cpp IntegralMap.cpp Integral.cpp \
           Coefficient.cpp Expression.cpp IdentityGenerator.cpp \
           SymmetricSelector.cpp PrototypeMap.cpp
OBJS     = $(patsubst %.cpp,%.o,$(SRCS))

.PHONY: depend basic-clean clean

libIdSolver.a: $(OBJS)
	ar cr libIdSolver.a $^

IdSolver: main.o libIdSolver.a
	$(LD) -o $@ $(LDFLAGS) main.o $(LIBS)

docs:
	$(MAKE) -C Docs

depend:
	makedepend -I. -Y $(SRCS)

basic-clean:
	rm -f xform* *~ .*.id.frm .*.id.log *.ps decls output integrals 
	rm -f *definition *identities.prc *symmetries.prc *matching.prc *matchings
	rm -f Masters Substitutions IdSolverDump
	rm -rf *.dat

clean: basic-clean
	rm -f *.o *.bak .mdep* core IdSolver libIdSolver.a

# DO NOT DELETE THIS LINE -- make  depend  depends  on it.

ResizableBuffer.o: ./IdSolver.hpp
IntegralMap.o: ./IdSolver.hpp
Integral.o: ./IdSolver.hpp
Coefficient.o: ./IdSolver.hpp
Expression.o: ./IdSolver.hpp
IdentityGenerator.o: ./IdSolver.hpp
SymmetricSelector.o: ./IdSolver.hpp
PrototypeMap.o: ./IdSolver.hpp
