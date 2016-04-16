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

void array_gen(size_t x, size_t y, float A[x][y]);
void array_print(int x, int y, float A[x][y]);
void multiply_basic(size_t m,float A[m][m],float B[m][m],float X[m][m]);
void multiply_tiled(size_t m,float A[m][m],float B[m][m],float X[m][m],int tile_size);


// Fun with Matrix Multiply
// A[m][m] * B[m][m] = X[m][m]
int main()
{
  int m, max_size, tile_size;
  clock_t begin, end;
  double time_spent;
  srand(time(NULL));
  int x, t;

  //  for (x = 1; 16*x <= 512; x++) {
  //    max_size = 16*x;
  for (x = 0; pow(2,x) <= 512; x++) {
    max_size = pow(2,x);
    for (t = 0; pow(2,t) <= max_size; t++) {
      tile_size = pow(2,t);

      // Create matrix A[m][n]
      m = max_size;
      float A[m][m];
      array_gen(m,m,A);
      //array_print(m,m,A);

      // Create matrix B[p][q]
      // p = n in order for MM to be valid
      float B[m][m];
      array_gen(m,m,B);
      //array_print(m,m,B);

      begin = clock();

      // Fun with Matrix Multiply
      // A[m][n] * B[p][q] = X[m][q]
      float X[m][m];

      //      multiply_basic(m,A,B,X);
      multiply_tiled(m,A,B,X,tile_size);

      end = clock();
      time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
      //      printf("Array size = %dx%d, Total time = %f\n",max_size,max_size, time_spent);
      printf("Array size = %dx%d, Tile size = %d, Total time = %f\n",max_size,max_size, tile_size, time_spent);
      //  array_print(m,m,X);
    }
  }

  return 0;
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

void multiply_basic(size_t m,float A[m][m],float B[m][m],float X[m][m]) {
  // Fun with Matrix Multiply
  // A[m][m] * B[m][m] = X[m][m]
  float sum = 0.0;
  int i, j, k;
  for (i = 0; i < m; i++) {
    for (j = 0; j < m; j++) {
      for (k = 0; k < m; k++) {
        sum = sum + A[i][k]*B[k][j];
      }
      X[i][j] = sum;
      sum = 0.0;
    }
  }
}

void multiply_tiled(size_t m,float A[m][m],float B[m][m],float X[m][m],int tile_size) {
  // Fun with Matrix Multiply
  // A[m][m] * B[m][m] = X[m][m] by tile_size
  float sum = 0.0;
  int i, j, jj, k, kk;
  for (jj=0; jj<m; jj+=tile_size) {
    for (i=0; i<m; i++) {
      for (j=jj; j < fmin(jj+tile_size,m); j++) {
        X[i][j] = 0.0;
        for (kk=0; kk<m; kk+=tile_size) {
          for (i=0; i<m; i++) {
            for (j=jj; j < fmin(jj+tile_size,m); j++) {
              sum = 0.0;
              for (k=kk; k < fmin(kk+tile_size,m); k++) {
                sum += A[i][k] * B[k][j];
              }
              X[i][j] += sum;
            }
          }
        }
      }
    }
  }
}
