CXXFLAGS = -O -I.. -I../../Utilities
LIBS = -L.. -lDiaGen -L../../Utilities -lUtilities
TESTS =  TopologyTest TopologyGeneratorTest

.PHONY: clean

target: $(TESTS)

%Test: %Test.o
	g++ -o $@ $^ $(LIBS)
	./$@

clean:
	rm -f *.o *~ core *.ps *Test
