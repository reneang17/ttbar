CXXFLAGS = -O -I../Utilities
DIRS = Docs Tests
SRCS = Topology.cpp TopologyGenerator.cpp ScalarDiagram.cpp Prototype.cpp \
       Diagram.cpp DiagramGenerator.cpp Model.cpp 
OBJS = $(patsubst %.cpp,%.o,$(SRCS))

.PHONY: docs tests depend clean

libDiaGen.a: $(OBJS)
	ar cr libDiaGen.a $^

%Test: %Test.o libDiaGen.a
	g++ -o $@ $^ -lDiaGen -lUtilities

docs:
	$(MAKE) -C Docs

tests:
	$(MAKE) -C Tests

depend:
	makedepend -Y $(SRCS)

clean:
	rm -f *.o *~ *.bak .mdep* *Test core libDiaGen.a
	for i in $(DIRS); do \
          $(MAKE) -C $$i clean; \
        done

# DO NOT DELETE THIS LINE -- make  depend  depends  on it.

Topology.o: Topology.hpp
TopologyGenerator.o: TopologyGenerator.hpp Topology.hpp
ScalarDiagram.o: ScalarDiagram.hpp Topology.hpp Prototype.hpp
Prototype.o: Prototype.hpp Topology.hpp
Diagram.o: Diagram.hpp Field.hpp Vertex.hpp Topology.hpp
DiagramGenerator.o: DiagramGenerator.hpp Model.hpp Field.hpp Vertex.hpp
DiagramGenerator.o: Diagram.hpp Topology.hpp
Model.o: Model.hpp Field.hpp Vertex.hpp
