CC = gcc
CFLAGS = -Wall -fprofile-arcs -ftest-coverage
LDFLAGS = -L. -lfnc
LIBNAME = libfnc.so

all: $(LIBNAME) my_program

$(LIBNAME): fnc.o
	$(CC) -shared -o $(LIBNAME) fnc.o

my_program: main.c $(LIBNAME)
	$(CC) main.c $(LDFLAGS) -o my_program

fnc.o: fnc.c
	$(CC) -c $(CFLAGS) -fPIC fnc.c -o fnc.o

clean:
	rm -f $(LIBNAME) fnc.o my_program
