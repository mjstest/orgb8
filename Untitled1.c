#include<stdio.h>

int main() {

    for (int i = 0; i < 5; i++) {
        for (int j = 4-i; j > 0; j--) {
            printf(" ");
        }
        for (int k = i+1; k>0; k--) {
            if(i%2 == 0) {
                printf("x");
            } else {
                printf("+");
            }
        }
        printf("\n");
    }

    return 0;
}
