#include <stdio.h>
int main()
{
  int n, A[10], i;
  scanf("%d", &n);
  for (i = 0; i < 9; i++)
  {
    A[i] = n % 2;
    n /= 2;
  }
  for (i = 0; i < 10; i++)
  {
    printf("%d", A[9 - i]);
  }
  return 0;
}
