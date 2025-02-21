#include <stdio.h>
#include <stdlib.h>
extern int sum(int, int);
int main(int argc, char **argv){
   int a = strtol(argv[1], NULL, 10);
   int b = strtol(argv[2], NULL, 10);
   int c = sum(a, b);
   printf("%d + %d = %d\n", a, b, c);
}

