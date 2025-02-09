#include <bits/stdc++.h>
using namespace std;

int n, m1, m2, k, d[5000];
bool G[5000][5000];

int main() {
    cin >> n >> m1 >> m2 >> k, srand(time(0));
    cout << "0 0 " << k << endl << endl << n << endl;
    for (int i = 0; i < m1; i++) {
        int u = rand()%n, v = rand()%n;
        while (G[u][v] || G[v][u] || u == v)
            u = rand()%n, v = rand()%n;
        G[u][v] = G[v][u] = true;
        d[u]++, d[v]++;
    }
    for (int i = 0; i < n; i++) {
        cout << d[i] << " ";
        for (int j = 0; j < n; j++)
            if (G[i][j]) cout << j+1 << " ";
        cout << endl;
    }
    cout << endl << m2 << endl;
    for (int i = 0; i < m2; i++) {
        int u = rand()%n, v = rand()%n;
        while (G[u][v] || G[v][u])
            u = rand()%n, v = rand()%n;
        G[u][v] = G[v][u] = true;
        cout << u+1 << " " << v+1 << " " << rand()%97 << endl;
    }
    return 0;
}
