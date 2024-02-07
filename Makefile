CC = gcc
CFLAGS = -Wall -Wextra -Wpedantic -fprofile-arcs -ftest-coverage
LDFLAGS = -fprofile-arcs

SRCS = fnc.c main.c
OBJS = $(SRCS:.c=.o)
EXECUTABLE = coverage_test

.PHONY: all clean coverage

all: $(EXECUTABLE)

$(EXECUTABLE): $(OBJS)
	$(CC) $(LDFLAGS) $^ -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(EXECUTABLE) $(OBJS) *.gcda *.gcno *.gcov

coverage: $(EXECUTABLE)
	./$(EXECUTABLE)
	gcov fnc.c