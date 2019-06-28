CXX      = g++
LD       = g++
#CXXFLAGS = -I.. -I../../DiaGen -I../../Utilities -ggdb
CXXFLAGS = -O3 -I.. -I../../DiaGen -I../../Utilities
LDFLAGS  =
LIBS     = -L.. -lIdSolver -L../../DiaGen -lDiaGen \
           -L../../Utilities -lUtilities -lxqdbm -lqdbm
SRCS     = determine_masters.cpp generate_identities.cpp generation_points.cpp \
           large_database.cpp parse_integrals.cpp print_identities.cpp \
           print_integrals.cpp read_identities.cpp replace_masters.cpp \
           shift_identities.cpp simplify_expressions.cpp solve_integrals.cpp \
           solve_prototypes.cpp sort_integrals.cpp
OBJS     = $(patsubst %.cpp,%.o,$(SRCS))
EXEC     = $(patsubst %.cpp,%,$(SRCS))

.PHONY: clean

target: $(OBJS) $(EXEC)

%: %.o
	$(LD) $(LDFLAGS) -o $@ $^ $(LIBS)

clean:
	rm -f *.o *~ $(EXEC)
