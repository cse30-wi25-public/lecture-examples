#include <stdio.h>
#include <stdlib.h>
extern void myswap(int, int);

int main(int argc, char *argv[]){
  int a = atoi(argv[argc-2]);
  int b = atoi(argv[argc-1]);
  printf("%d %d\n", a, b);
  
  //
  // doesn't swap a and b because
  // parameters are pass by value
  //
  myswap(a, b);
  printf("%d %d\n", a, b);
}
