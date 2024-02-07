#include <stdio.h>

void function1(int i) {
    if (i % 3 == 0)
      printf ("%d is divisible by 3\n", i);
    if (i % 11 == 0)
      printf ("%d is divisible by 11\n", i);
}