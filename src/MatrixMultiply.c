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
#include <math.h>

int num_gen(int max_size, char *var);
void array_gen(size_t x, size_t y, float A[x][y]);
void array_print(int x, int y, float A[x][y]);
void multiply_basic(size_t m, size_t n,size_t q,float A[m][n],float B[n][q],float X[m][q]);
void multiply_tiled(size_t m, size_t n,size_t q,float A[m][n],float B[n][q],float X[m][q]),int tile_size);


// Fun with Matrix Multiply
// A[m][n] * B[p][q] = X[m][q]
int main()
{
  int m, n;
  int p, q;
  int max_size;
  clock_t begin, end;
  double time_spent;
  int tile_size;
  srand(time(NULL));
  int x, t;
  //for (x = 0; pow(2,x) <= 512; x++) {
    //max_size = pow(2,x);
  for (x = 0; 16*x <= 512; x++) {
    max_size = 16*x;
    //for (t = 0; pow(2,t) <= max_size; t++) {
      //tile_size = pow(2,t);

      // Create matrix A[m][n]
      //  m = num_gen(max_size,"m");
      //  n = num_gen(max_size,"n");
      m = max_size;
      n=m; q=m;
      float A[m][n];
      array_gen(m,n,A);
      //array_print(m,n,A);

      // Create matrix B[p][q]
      p = n; // in order for MM to be valid
      //  q = num_gen(max_size, "q");
      float B[p][q];
      array_gen(p,q,B);
      //array_print(p,q,B);

      begin = clock();

      // Fun with Matrix Multiply
      // A[m][n] * B[p][q] = X[m][q]
      float X[m][q];

      multiply_basic(m,p,q,A,B,X);
      //multiply_tiled(m,p,q,A,B,X,tile_size);

      end = clock();
      time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
      printf("Array size = %d, Total time = %f\n",max_size, time_spent);
      //printf("Array size = %d, Tile size = %d, Total time = %f\n",max_size, tile_size, time_spent);

      //  array_print(m,q,X);
    //}
  }

  return 0;
}

int num_gen(int max_size, char *var) {
  int result =  rand()%max_size  + 1; // we allow up to max
  printf("%s=%i\n",var,result);
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

void array_print(int x, int y, float A[x][y])
{
  printf("Matrix[%i][%i]\n",x,y);
  int i, j;
  for (i = 0; i < x; i++) {
    for (j = 0; j < y; j++) {
      printf("%f\t", A[i][j]);
    }
    printf("\n");
  }
}

void multiply_basic(size_t m, size_t n,size_t q,float A[m][n],float B[n][q],float X[m][q]) {
  // Fun with Matrix Multiply
  // A[m][n] * B[p=n][q] = X[m][q]
  float sum = 0.0;
  int i, j, k;
  for (i = 0; i < m; i++) {
    for (j = 0; j < q; j++) {
      for (k = 0; k < n; k++) {
        sum = sum + A[i][k]*B[k][j];
      }
      X[i][j] = sum;
      sum = 0.0;
    }
  }
}

void multiply_tiled(size_t m, size_t n,size_t q,float A[m][n],float B[n][q],float X[m][q],int tile_size) {
  // Fun with Matrix Multiply
  // A[m][n] * B[p][q] = X[m][q] by tile_size
  float sum = 0.0;
  int i, ii, j, jj, k;
  for (ii = 0; ii < x; ii+=tile_size) {
    for (jj = 0; jj < z; jj+=tile_size) {
      for (i = ii; i < fmin(ii+tile_size-1,m); i++) {
        for (j = jj; j < fmin(jj+tile_size-1,q); j++) {
          for (k = 0; k < n; k++) {
            sum = sum + A[i][k]*B[k][j];
          }
          X[i][j] = sum;
          sum = 0.0;
        }
      }
    }
  }
}
