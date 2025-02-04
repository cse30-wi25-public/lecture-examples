#include <stdio.h>
#include <stdlib.h>
extern int myabs(int);

int main (int argc, char *argv[]){
  int num = atoi(argv[1]);
  printf("abs(%d) = %d\n", num, myabs(num));
}
