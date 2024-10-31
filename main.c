#include <stdio.h>

int main() {
    int a, b;
    printf("Enter two integers: ");
    scanf("%d %d", &a, &b);

    int difference = a - b;
    printf("Difference: %d\n", difference);

    return 0;
}
