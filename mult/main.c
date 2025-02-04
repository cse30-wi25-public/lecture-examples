#include <stdio.h>
#include <stdlib.h>
extern int mymult(int, int);

int main (int argc, char *argv[]){
  int num_a = atoi(argv[argc-2]);
  int num_b = atoi(argv[argc-1]);
  printf("%d * %d = %d\n", num_a, num_b, mymult(num_a, num_b));
}
