#include <bits/stdc++.h>
using namespace std;

int main() {
    int x = 1, y = 2, z = 1;
    for (int i = 1; i <= 10; i++) {
        x = i;
        y = x;
        for (int j = 100, k = 100; j >= 1; j--, k++) {
            if (j%2 == 1) {
                z = j;
                y = k;
            } else {
                z = k;
                y = j;
            }
            if (x == 10 && y >= 160 && z <= 25)
                goto terminate;
        }
    }
    terminate:
    int w = y;
    if (w > 170)
        w--;
    return x+y+z+w;
}
