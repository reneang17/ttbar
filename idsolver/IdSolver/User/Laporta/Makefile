CXX      = g++
LD       = g++
CXXFLAGS = -O
LDFLAGS  =
LIBS     = -lIdSolver -lDiaGen -lUtilities -lxqdbm -lqdbm
SRCS     = IdSolveX.cpp
OBJS     = $(patsubst %.cpp,%.o,$(SRCS))
EXEC     = $(patsubst %.cpp,%,$(SRCS))

.PHONY: basic-clean clean

target: $(EXEC) $(OBJS)

%: %.o
	$(LD) -o $@ $^ $(LIBS)

basic-clean:
	rm -f xform* *~ .*.id.frm .*.id.log *.ps decls output integrals 
	rm -f *definition *identities.prc *symmetries.prc *matching.prc *matchings
	rm -f IdSolverDump Integrals Difference
	rm -rf *.dat

clean: basic-clean
	rm -f *.o *~ $(EXEC)
