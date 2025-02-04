#include <stdio.h>
#include <stdlib.h>
#include <string.h>
extern int mult(int, int);
extern int sumsquare(int, int);
int main(int argc, char *argv[]){
  if (argc != 3){
    fprintf(stderr, "wrong # of arguments, expected 2\n");
    exit(1);
  }
  int a = atoi(argv[1]);
  int b = atoi(argv[2]);
  int c = sumsquare(a, b);
  printf("%d * %d + %d = %d\n", a, a, b, c);

}
