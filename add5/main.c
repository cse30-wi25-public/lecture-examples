#include <stdio.h>
#include <stdlib.h>
extern int add5(int, int, int, int, int);

int main(){
        printf("1 + 2 + 3 + 4 + 5 = %d\n", add5(1, 2, 3, 4, 5));
        return EXIT_SUCCESS;
}
