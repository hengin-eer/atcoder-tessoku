#include <stdio.h>
int main(void)
{
  int i, j, N, Q;
  scanf("%d", &N);
  scanf("%d", &Q);
  int A[N + 1], S[N + 1];
  S[0] = 0;
  for (i = 1; i <= N; i++)
  {
    scanf("%d", &A[i]);
    S[i] = A[i] + S[i - 1];
  }
  for (j = 1; j <= Q; j++)
  {
    int L, R;
    scanf("%d", &L);
    scanf("%d", &R);
    printf("%d\n", S[R] - S[L - 1]);
  }
  return 0;
}
