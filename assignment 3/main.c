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
