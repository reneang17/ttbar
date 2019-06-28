LIB = ../libmymathlib.a

OBJS = \
mtlprt.o \
zerox64.o \
dilog64.o \
cgplg64.o

$(LIB): $(LIB)($(OBJS))
	ranlib $(LIB)

%.o: %.f
	$(F77) $(F77FLAGS) -c $<

clean:
	$(RM) *.o

