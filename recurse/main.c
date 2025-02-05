#include <stdio.h>
#include <stdlib.h>
extern int fact(int);

int main(int argc, char *argv[]){
  int x = atoi(argv[argc-1]);
  printf("%d! = %d\n", x, fact(x));
}
