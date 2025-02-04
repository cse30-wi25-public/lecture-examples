#include <stdio.h>
extern int sum(int, int);
int main(){
	int a = 10;
	int b = 20;
	int c = sum(a, b);
	c = c + 1;
}
