CXX = g++
LD = g++
CXXFLAGS = -O
LDFLAGS = 
OBJS = Various.o Interfaces.o Partition.o Timer.o

.PHONY: clean

libUtilities.a: $(OBJS)
	ar cr libUtilities.a $^

clean:
	rm -f *.o *~ core libUtilities.a

$(OBJS): Utilities.hpp
