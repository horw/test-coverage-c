CC=gcc
CGFLAGS=-Wall -pg
CCOV=-fprofile-arcs -ftest-coverage
LIBS = -lgcov

main: main.o fnc.o
	$(CC) $(CFLAGS) main.o fnc.o -o main $(LIBS)

main.o: main.c
	$(CC) -c $(CFLAGS) $(CCOV) main.c

fnc.o: fnc.c
	$(CC) -c $(CFLAGS) $(CCOV) fnc.c

clean:
	rm *.gcov *.gcda *.gcno *.o

rm:
	rm -rf build

md:
	mkdir build