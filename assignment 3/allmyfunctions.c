#include<stdio.h>
#define head_H

#define MAX 10

void generateFibonacci(int n);

void multiplyMatrices(int first[MAX][MAX], int second[MAX][MAX], int result[MAX][MAX], int rowFirst, int columnFirst, int rowSecond, int columnSecond);



// fibbo function

#include "head.h"
#include <stdio.h>

void generateFibonacci(int n) {
    int first = 0, second = 1, next;

    printf("Fibonacci series up to %d terms:\n", n);

    for (int i = 0; i < n; i++) {
        printf("%d, ", first);
        next = first + second;
        first = second;
        second = next;
    }
}


//matrix function

void multiplyMatrices(int first[MAX][MAX], int second[MAX][MAX], int result[MAX][MAX], int rowFirst, int columnFirst, int rowSecond, int columnSecond) {
    for (int i = 0; i < rowFirst; ++i) {
        for (int j = 0; j < columnSecond; ++j) {
            result[i][j] = 0;
        }
    }

    for (int i = 0; i < rowFirst; ++i) {
        for (int j = 0; j < columnSecond; ++j) {
            for (int k = 0; k < columnFirst; ++k) {
                result[i][j] += first[i][k] * second[k][j];
            }
        }
    }
}



//main function

#include "head.h"

int main() {
    int n;

    printf("Enter the number of terms for Fibonacci series: ");
    scanf("%d", &n);

    generateFibonacci(n);

    int first[MAX][MAX] = {{1, 2}, {3, 4}};
    int second[MAX][MAX] = {{5, 6}, {7, 8}};
    int result[MAX][MAX];

    int rowFirst = 2, columnFirst = 2, rowSecond = 2, columnSecond = 2;

    multiplyMatrices(first, second, result, rowFirst, columnFirst, rowSecond, columnSecond);

    printf("\nResultant matrix after multiplication:\n");
    for (int i = 0; i < rowFirst; ++i) {
        for (int j = 0; j < columnSecond; ++j) {
            printf("%d  ", result[i][j]);
            if (j == columnSecond - 1)
                printf("\n");
        }
    }

    return 0;
}