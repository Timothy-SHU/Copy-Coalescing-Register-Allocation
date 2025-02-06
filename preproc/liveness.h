#include <bits/stdc++.h>

namespace {
using namespace std;

pair <vector <set <int>>, vector <set <int>>> getLiveness(int n, vector <vector <int>> CFG, vector <pair <int, set <int>>> UsedVar) {
    vector <set <int>> LiveIn, LiveOut;
    for (int i = 0; i <= n; i++) LiveIn.push_back(set <int> ());
    for (int i = 0; i <= n; i++) LiveOut.push_back(set <int> ());
    
    bool flag = false;
    while (!flag) {
        flag = true;
        for (int u = n; u >= 1; u--) {
            set <int> prevIn = LiveIn[u];
            set <int> prevOut = LiveOut[u];
            LiveOut[u].clear();
            for (int v : CFG[u])
                for (int var : LiveIn[v])
                    LiveOut[u].insert(var);
            LiveIn[u] = UsedVar[u].second;
            for (int var : LiveOut[u])
                LiveIn[u].insert(var);
            if (UsedVar[u].first != 0) {
                auto it = LiveIn[u].find(UsedVar[u].first);
                if (it != LiveIn[u].end())
                    LiveIn[u].erase(it);
            }
            if (flag && prevIn != LiveIn[u]) flag = false;
            if (flag && prevOut != LiveOut[u]) flag = false;
        }
    }
    
    return make_pair(LiveIn, LiveOut);
}

vector <set <int>> getInterference(int cntNode, int cntVar, vector <set <int>> LiveIn, vector <set <int>> LiveOut) {
    vector <set <int>> H;
    for (int i = 0; i <= cntVar; i++)
        H.push_back(set <int> ());
    for (int i = 1; i <= cntNode; i++) {
        for (int u : LiveIn[i])
            for (int v : LiveIn[i])
                if (u != v) H[u].insert(v);
        for (int u : LiveOut[i])
            for (int v : LiveOut[i])
                if (u != v) H[u].insert(v);
    }
    return H;
}

}
