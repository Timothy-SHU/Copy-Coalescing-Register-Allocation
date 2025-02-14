#include <bits/stdc++.h>
#include "TreeDecomp.cpp"
using namespace std;
typedef long long lnt;
typedef pair <int, int> pii;
const int SOLVER_TIME_LIMIT = 5*1000000;

int numVar, numReg, numBag, tw;
set <pii> H;
map <pii, lnt> A;
vector <pii> TreeEdge;
vector <vector <int>> Bag;
vector <vector <int>> Tree;

vector <int> color;
vector <bool> mark;
map <int, vector <int>> witness;

map <int, int> getAlloc(int s, const vector <int> &b) {
    map <int, int> alloc;
    for (int x : b)
        alloc[x] = s%numReg, 
        s /= numReg;
    return alloc;
}

int getCompatible(map <int, int> alloc, const vector <int> &b) {
    int s = 0;
    for (int i = (int)b.size()-1; i >= 0; i--)
        if (alloc.find(b[i]) != alloc.end())
            s = s*numReg+alloc[b[i]];
        else
            cerr << "E: Error in finding compatible state";
    return s;
}

void getAllEdges(const vector <int> &b, vector <pii> &curH, vector <pair <pii, lnt>> &curA) {
    for (int x : b) for (int y : b)
        if (x <= y && H.find(make_pair(x, y)) != H.end())
            curH.push_back(make_pair(x, y));
    for (int x : b) for (int y : b)
        if (x <= y && A.find(make_pair(x, y)) != A.end())
            curA.push_back(make_pair(make_pair(x, y), A[make_pair(x, y)]));
}

void getRelevantEdges(int x, const vector <int> &b, vector <pii> &curH, vector <pair <pii, lnt>> &curA) {
    for (int y : b) {
        if (H.find(make_pair(x, y)) != H.end())
            curH.push_back(make_pair(x, y));
        else if (H.find(make_pair(y, x)) != H.end())
            curH.push_back(make_pair(y, x));
    }
    for (int y : b) {
        if (A.find(make_pair(x, y)) != A.end())
            curA.push_back(make_pair(make_pair(x, y), A[make_pair(x, y)]));
        else if (A.find(make_pair(y, x)) != A.end())
            curA.push_back(make_pair(make_pair(y, x), A[make_pair(y, x)]));
    }
}

void DFS(int u, vector <lnt> &f) {
    vector <pii> curH;
    vector <pair <pii, lnt>> curA;

    mark[u] = true;
    int numChild = 0, v = -1;
    for (int i = 0; i < (int)Tree[u].size(); i++)
        if (!mark[Tree[u][i]]) v = Tree[u][i], numChild++;
    int STA = 1;
    for (int i = 0; i < (int)Bag[u].size(); i++)
        STA *= numReg;
    f.resize(STA, 0);

    if (numChild == 0) {                                    // Leaf Bag
        getAllEdges(Bag[u], curH, curA);
        for (int s = 0; s < STA; s++) {
            map <int, int> alloc = getAlloc(s, Bag[u]);
            for (pii &e : curH)
                if (alloc[e.first] == alloc[e.second])
                    { f[s] = -1; break; }
            if (f[s] == -1) continue;
            for (pair <pii, lnt> &e : curA)
                if (alloc[e.first.first] == alloc[e.first.second])
                    f[s] += e.second;
        }
    } else if (numChild == 1) {
        if (Bag[u].size() == Bag[v].size()+1) {             // Introduce Bag
            int x = -1;
            for (int y : Bag[u])
                if (find(Bag[v].begin(), Bag[v].end(), y) == Bag[v].end()) {
                    if (x == -1) x = y;
                    else cerr << "E: Bags " << u << " and " << v << " are not nice!\n";
                }
            getRelevantEdges(x, Bag[u], curH, curA);
            vector <lnt> g; DFS(v, g);
            for (int s = 0; s < STA; s++) {
                map <int, int> alloc = getAlloc(s, Bag[u]);
                for (pii &e : curH)
                    if (alloc[e.first] == alloc[e.second])
                        { f[s] = -1; break; }
                if (f[s] == -1) continue;
                f[s] = g[getCompatible(alloc, Bag[v])];
                if (f[s] == -1) continue;
                for (pair <pii, lnt> &e : curA)
                    if (alloc[e.first.first] == alloc[e.first.second])
                        f[s] += e.second;
            }
        } else if (Bag[u].size() == Bag[v].size()-1) {      // Forget Bag
            int x = -1;
            for (int y : Bag[v])
                if (find(Bag[u].begin(), Bag[u].end(), y) == Bag[u].end()) {
                    if (x == -1) x = y;
                    else cerr << "E: Bags " << u << " and " << v << " are not nice!\n";
                }
            vector <lnt> g; DFS(v, g);
            for (int s = 0; s < STA; s++) f[s] = -1;
            witness[u] = vector <int> (), witness[u].resize(STA, -1);
            for (int t = 0; t < (int)g.size(); t++) {
                map <int, int> alloc = getAlloc(t, Bag[v]);
                int s = getCompatible(alloc, Bag[u]);
                if (f[s] < g[t]) f[s] = g[t], witness[u][s] = t;
            }
        } else if (Bag[u] == Bag[v])                        // Dummy Bag
            DFS(v, f);
        else
            cerr << "E: Bags " << u << " and " << v << " are not nice!\n";
    } else {                                                // Merge Bag
        for (int v : Tree[u]) if (Bag[u] != Bag[v] && !mark[v])
            cerr << "E: Merge bag " << u << " is different from child " << v << "!\n";
        getAllEdges(Bag[u], curH, curA);
        for (int v : Tree[u]) if (!mark[v]){
            vector <lnt> g; DFS(v, g);
            for (int s = 0; s < STA; s++) {
                map <int, int> alloc = getAlloc(s, Bag[u]);
                int t = getCompatible(alloc, Bag[v]);
                if (s != t) cerr << "E: States of merge bag " << u << "doesn't match child " << v << "!\n";
                if (f[s] == -1 || g[t] == -1) f[s] = -1;
                else f[s] += g[t];
            }
        }
        for (int s = 0; s < STA; s++) if (f[s] != -1) {
            map <int, int> alloc = getAlloc(s, Bag[u]);
            for (pair <pii, lnt> &e : curA)
                if (alloc[e.first.first] == alloc[e.first.second])
                    f[s] -= e.second*(1LL*numChild-1);
        }
    }
    /*
    cerr << "Bag " << u << ": ";
    for (int x : Bag[u]) cerr << x << " "; cerr << endl;
    cerr << *max_element(f.begin(), f.end()) << endl;
    for (int s = 0; s < STA; s++) {
        map <int, int> alloc = getAlloc(s, Bag[u]);
        for (const pii &p : alloc) cerr << p.first << "(" << p.second << ") ";
        cerr << ": " << f[s] << endl;
    }
    cerr << endl;
    */
    // return f;
}

void traceCol(int u, int s, int fa) {
    map <int, int> alloc = getAlloc(s, Bag[u]);
    for (pii p : alloc)
        if (color[p.first] != -1 && color[p.first] != p.second)
            cerr << "E: Color mismatch of node " << p.first << " during reconstruction!\n";
        else color[p.first] = p.second;
    if (witness.find(u) != witness.end()) {
        for (int v : Tree[u]) if (v != fa)
            traceCol(v, witness[u][s], u);
    } else {
        for (int v : Tree[u]) if (v != fa)
            traceCol(v, getCompatible(alloc, Bag[v]), u);
    }
}

int main() {
    clock_t prev = clock();
    cerr << fixed << setprecision(6);
    bool isValid = loadGraph(numVar, numReg, H, A);
    genDecomp(numBag, tw, TreeEdge, Bag, SOLVER_TIME_LIMIT);
    cout << tw << endl;
    if (!isValid) { puts("-1"); return 0; }
    niceDecomp(numBag, TreeEdge, Bag, Tree);
    // printTree(numBag, tw, Bag, Tree);

    double decompTime = 1.0*(clock()-prev)/CLOCKS_PER_SEC+1.0*SOLVER_TIME_LIMIT/1000000;
    // cerr << "Decomposition runtime: " << decompTime  << " s.\n", prev = clock();

    mark.resize(numBag+1), color.resize(numVar+1, -1);
    lnt ans = 0;
    for (int i = 1; i <= numBag; i++) if (!mark[i]) {
        vector <lnt> dp; DFS(i, dp);
        vector <lnt>::iterator mx = max_element(dp.begin(), dp.end());
        if (ans == -1 || *mx == -1) ans = -1;
        else traceCol(i, (int)distance(dp.begin(), mx), 0), ans += *mx;
    }

    if (ans == -1) { puts("-1"); return 0; }

    double DPTime = 1.0*(clock()-prev)/CLOCKS_PER_SEC;
    // cerr << "DP runtime: " << DPTime << " s.\n";

    lnt totalWeight = 0, validWeight = 0;
    // for (pii e : H)
    //     if (color[e.first] == color[e.second])
    //         cerr << "E: " << e.first << " and " << e.second << " are of the same color!\n";
    for (pair <pii, lnt> e : A) {
        totalWeight += e.second;
        if (color[e.first.first] == color[e.first.second])
            validWeight += e.second;
    }
    if (validWeight != ans)
        cerr << "E: Answer doesn't match allocation!\n";
    cout << ans << " " << totalWeight << " ";
    cout << decompTime+DPTime << " " << 1.0*SOLVER_TIME_LIMIT/1000000 << endl;
    for (int i = 1; i <= numVar; i++) cout << color[i] << " "; cout << endl;
    return 0;
}
