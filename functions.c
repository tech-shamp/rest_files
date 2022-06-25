#include <stdio.h>
void newFunction(int n);
void main()
{
  int n;
  printf("Enter Number ");
  scanf("%d", &n);
  newFunction(n);
}

void newFunction(int n)
{
  int c;
  for (c = 1; c <= 10; c++)
  {
    /* code */
    printf("%d * %d = %d\n", n, c, n * c);
  }
}