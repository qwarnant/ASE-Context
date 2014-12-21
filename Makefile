# $Id: Makefile,v 1.2 2009/11/17 10:02:37 marquet Exp $
##############################################################################

ROOTDIR=/home/qwarnant/workspace/ASE

CC	=  gcc 
CFLAGS	=  -m32
CFLAGS  += -g
LIBDIR  =  $(ROOTDIR)/lib
INCDIR  =  $(ROOTDIR)/include
CFLAGS  += -I$(INCDIR)
LIBS    = -lhardware

###------------------------------
### Main targets 
###------------------------------------------------------------
BINARIES= prodcons
OBJECTS	= $(addsuffix .o,\
	  hw sem yield)

all: $(BINARIES) $(OBJECTS)


###------------------------------
### Binaries
###------------------------------------------------------------
prodcons : prodcons.o $(OBJECTS)

% : %.o
	$(CC) -m32 -o $@ $^ -L$(LIBDIR) $(LIBS)

###------------------------------
### #include dependences 
###------------------------------------------------------------
# you may fill these lines with "make depend"
hw.o: hw.c hw.h
sem.o: sem.c sem.h yield.h
yield.o: yield.c yield.h hw.h

%.o: %.c
	$(CC) $(CFLAGS) -c $< 

###------------------------------
### Misc.
###------------------------------------------------------------
.PHONY: clean realclean depend
clean:
	$(RM) *.o $(BINARIES)
realclean: clean 
depend : 
	$(CC) $(CFLAGS) -MM $(INCDIR) *.c 
