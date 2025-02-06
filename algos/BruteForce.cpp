#include <bits/stdc++.h>
#include <cwchar>
using namespace std;
const int MAX_N = 500000;

int n, m, k, mx = -1;
vector <int> G[MAX_N];
vector <pair <pair <int, int>, int>> A;
int col[MAX_N], mx_col[MAX_N];

void DFS(int u) {
    if (u > n) {
        int ans = 0;
        for (auto p : A)
            if (col[p.first.first] == col[p.first.second])
                ans += p.second;
        if (ans > mx) {
            mx = ans;
            for (int i = 1; i <= n; i++)
                mx_col[i] = col[i];
        }
        return;
    }
    for (int c = 1; c <= k; c++) {
        bool flag = true;
        for (int v : G[u])
            if (c == col[v])
                { flag = false; break; }
        if (flag) col[u] = c, DFS(u+1);
    }
    return;
}

int main() {
    freopen("000", "r", stdin);
    freopen("BruteForce.txt", "w", stdout);
    cin >> n >> m >> k;
    k = 2;
    for (int i = 1, l, x; i <= n; i++) {
        cin >> l; while (l--) cin >> x;
        cin >> l; while (l--) cin >> x;
        cin >> l; while (l--) cin >> x;
    }
    cin >> n;
    for (int u = 1, v, l; u <= n; u++)
        { cin >> l; while (l--) cin >> v, G[u].push_back(v); }
    cin >> m;
    for (int i = 0, u, v, w; i < m; i++)
        cin >> u >> v >> w, 
        A.push_back(make_pair(make_pair(u, v), w));
    if (n <= 30) {
        DFS(1);
        cout << mx << endl;
        if (mx != -1)
            for (int i = 1; i <= n; i++)
                cout << mx_col[i] << " ";
    } else
        cout << -1;
    return 0;
}
