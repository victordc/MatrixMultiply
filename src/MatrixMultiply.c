/*
 ============================================================================
 Name        : MatrixMultiply.c
 Author      : Victor dela Cruz
 Version     :
 Copyright   : All rights reserved
 Description : Matrix Multiply in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <float.h>
#include <stdlib.h>
#include <time.h>

int num_gen(int max_size, char *var);
void array_gen(size_t x, size_t y, float A[x][y]);
void array_print(size_t x, size_t y, float A[x][y]);

// Fun with Matrix Multiply
// A[m][n] * B[p][q] = X[m][q]
int main()
{
  int m, n;
  int p, q;
  int max_size = 10;
  int i, j, k;
  float sum = 0.0;
  srand(time(NULL));

  // Create matrix A[m][n]
  m = num_gen(max_size,"m");
  n = num_gen(max_size,"n");
  float A[m][n];
  array_gen(m,n,A);
  array_print(m,n,A);

  // Create matrix B[p][q]
  p = n; // in order for MM to be valid
  q = num_gen(max_size, "q");
  float B[p][q];
  array_gen(p,q,B);
  array_print(p,q,B);

  // Fun with Matrix Multiply
  // A[m][n] * B[p][q] = X[m][q]
  float X[m][q];
  for (i = 0; i < m; i++) {
    for (j = 0; j < q; j++) {
      for (k = 0; k < p; k++) {
        sum = sum + A[i][k]*B[k][j];
      }

      X[i][j] = sum;
      sum = 0;
    }
  }

  array_print(m,q,X);

  return 0;
}

int num_gen(int max_size, char *var) {
  int result =  rand()%max_size  + 1; // we allow up to max
  printf("%s=%d\n",var,result);
  return result;
}

void array_gen(size_t x, size_t y, float A[x][y])
{
  int i, j;
  float num;
  for(i = 0; i < x; i++) {
    for(j = 0; j < y; j++) {
      num = (float)rand()/(float)RAND_MAX;
      A[i][j] = num;
    }
  }
}

void array_print(size_t x, size_t y, float A[x][y])
{
  int i, j;
  for (i = 0; i < x; i++) {
    for (j = 0; j < y; j++) {
      printf("%f\t", A[i][j]);
    }
    printf("\n");
  }
}
