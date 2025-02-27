#include <bits/stdc++.h>
using namespace std;
typedef long long lnt;
typedef pair <int, int> pii;
double SOLVER_TIME_LIMIT = 1;

int numVar, numReg;
vector <vector <int>> H;
vector <vector <pii>> A;

bool loadGraph() {
    int n, m, k, l; bool flag = true;
    cin >> n >> m >> k, numReg = k;
    for (int i = 1, x; i <= n; i++) {
        cin >> l; while (l--) cin >> x;
        cin >> l; if (l > k) flag = false; while (l--) cin >> x;
        cin >> l; if (l > k) flag = false; while (l--) cin >> x;
    }
    int cntEdge = 0; cin >> n, numVar = n;
    H.resize(numVar+1), A.resize(numVar+1);
    for (int u = 1, v; u <= n; u++) {
        cin >> l, cntEdge += l;
        while (l--) cin >> v, H[u].push_back(v);
    }
    cin >> m, cntEdge = cntEdge/2+m;
    for (int i = 0, u, v, w; i < m; i++) {
        cin >> u >> v >> w;
        A[u].push_back(make_pair(v, w));
        if (u != v) A[v].push_back(make_pair(u, w));
    }

    ofstream graphFile("graph.txt");
    if (graphFile.is_open()) {
        graphFile << "p tw " << n << " " << cntEdge << endl;
        for (int u = 1; u <= numVar; u++)
            for (int v : H[u]) if (v >= u)
                graphFile << u << " " << v << endl;
        for (int u = 1; u <= numVar; u++)
            for (pii p : A[u]) if (p.first >= u)
                graphFile << u << " " << p.first << endl;
    } else {
        cerr << "E: Unable to open file 'graph.txt'!\n";
        return false;
    }
    graphFile.close();

    cout << numVar << " ";
    if (n == 0) cout << 0 << " ";
    else cout << 2.0*m/n << " ";

    return flag;
}

int numBag, tw;
vector <int> depth;
vector <int> bagType;
vector <pii> TreeEdge;
vector <vector <int>> Bag;
vector <vector <int>> Tree;

void genDecomp() {
    if (numVar <= 2000 && numReg == 6) SOLVER_TIME_LIMIT = 0.03;
    else if (numVar <= 6000) SOLVER_TIME_LIMIT = 0.1;
    else if (numVar <= 20000) SOLVER_TIME_LIMIT = 1;
    else SOLVER_TIME_LIMIT = 10;

    // cerr << "Time Limit = " << SOLVER_TIME_LIMIT << ". Solving graph.txt... ";
    system("../pace17/flow_cutter_pace17 < graph.txt > tree.txt &");
    usleep(SOLVER_TIME_LIMIT*1000000);
    system("pkill -INT -f ../pace17/flow_cutter_pace17");
    // cerr << "Completed.";

    std::ifstream treeFile("tree.txt");
    if (treeFile.is_open()) {
        std::string str; int l;
        while (treeFile >> str && str != "td") ;
        treeFile >> numBag >> tw >> l;
        if (tw > 0) tw--;
        Tree.resize(numBag+1);
        Bag.resize(numBag+1);
        std::getline(treeFile, str);
        for (int i = 1; i <= numBag; i++) {
            std::getline(treeFile, str);
            size_t pos = str.find(" ");
            str.erase(0, pos+1);
            pos = str.find(" ");
            if (pos == string::npos) continue;
            int bagID = stoi(str.substr(0, pos));
            str.erase(0, pos+1);
            do {
                pos = str.find(" ");
                Bag[bagID].push_back(stoi(str.substr(0, pos)));
                str.erase(0, pos+1);
            } while (pos != string::npos);
            sort(Bag[bagID].begin(), Bag[bagID].end());
            if (adjacent_find(Bag[bagID].begin(), Bag[bagID].end()) != Bag[bagID].end())
                cerr << "E: Duplicated elements in Bag " << bagID << "!\n";
        }
        for (int i = 1, u, v; i < numBag; i++)
            treeFile >> u >> v, TreeEdge.push_back(make_pair(u, v)), 
            Tree[u].push_back(v), Tree[v].push_back(u);
    } else
        cerr << "E: Unable to open file 'tree.txt'!\n";
    treeFile.close();
    system("rm graph.txt tree.txt");

    // cerr << " [" << numBag << " bags, tw = " << tw << "]\n";
    cout << tw << endl;
}

void getDepth(int u, int d) {
    depth[u] = d; int cntChild = 0;
    for (int v : Tree[u]) if (depth[v] == -1)
        getDepth(v, d+1), cntChild++;
    bagType[u] = cntChild;
}

void niceDecomp() {
    depth.resize(numBag+1, -1);
    bagType.resize(numBag+1, 0);
    for (int i = 1; i <= numBag; i++)
        if (depth[i] == -1) getDepth(i, 0);

    Tree.clear(), Tree.resize(numBag+1);
    for (pii e : TreeEdge) {
        int u = e.first, v = e.second;
        if (depth[u] > depth[v]) swap(u, v);
        if (Bag[u] == Bag[v])
            { Tree[u].push_back(v); continue; }

        int mid = ++numBag;
        Bag.push_back(vector <int> ());
        Tree.push_back(vector <int> ());
        for (int x : Bag[v])
            if (find(Bag[u].begin(), Bag[u].end(), x) != Bag[u].end())
                Bag[mid].push_back(x);
        bagType.push_back(1), Tree[mid].push_back(v);
        if (bagType[u] < 2) Tree[u].push_back(mid);
        else {
            int cpy = ++numBag;
            Tree.push_back(vector <int> ());
            Bag.push_back(Bag[u]), bagType.push_back(1);
            Tree[u].push_back(cpy), Tree[cpy].push_back(mid);
        }
    }
    cerr << " [" << numVar << " nodes, " << numBag << " bags, tw = " << tw << "]";
}

void printTree() {
    cerr << numBag << " bags, tw = " << tw << endl;
    for (int u = 1; u <= numBag; u++) {
        cerr << "Bag " << u << ": ";
        if (Bag[u].empty()) cerr << "empty";
        for (int x : Bag[u]) cerr << x << " ";
        cerr << "---- Children: ";
        for (int v : Tree[u]) cerr << v << " ";
        cerr << endl;
    }
}
void printTreeStat() {
    cerr << numBag << " bags:" << endl;
    vector <int> cnt(tw+2);
    int cntMerge = 0;
    for (int i = 1; i <= numBag; i++) {
        cnt[Bag[i].size()]++;
        if (Tree[i].size() > 2) cntMerge++;
    }
    for (int i = 0; i <= tw+1; i++)
        cerr << cnt[i] << " bags of size " << i << ";" << endl;
    cerr << cntMerge << " merge bags." << endl;
}

vector <lnt> state[16];
unordered_map <lnt, int> sta2idx[16];

void getStates(int cur, lnt sta, int mx, lnt unit) {
    sta2idx[cur][sta] = (int)state[cur].size();
    state[cur].push_back(sta);
    if (cur == tw+1) return;
    for (int c = 0; c < min(mx, numReg); c++)
        getStates(cur+1, sta+c*unit, mx, unit<<3);
    if (mx < numReg)
        getStates(cur+1, sta+mx*unit, mx+1, unit<<3);
}

vector <int> color;
vector <bool> mark;
unordered_map <int, vector <int>> witness;

unordered_map <int, int> getAlloc(lnt s, const vector <int> &b) {
    unordered_map <int, int> alloc;
    for (int x : b)
        alloc[x] = s&7, s >>= 3;
    return alloc;
}
lnt getCompatible(unordered_map <int, int> &alloc, const vector <int> &b) {
    lnt s = 0; int c = 0;
    vector <int> colMap(numReg, -1);
    for (int x : b)
        if (colMap[alloc[x]] == -1)
            colMap[alloc[x]] = c++;
    for (int i = (int)b.size()-1; i >= 0; i--)
        s = (s<<3)|colMap[alloc[b[i]]];
    return s;
}

void getAllEdges(const vector <int> &b, vector <pii> &curH, vector <pair <pii, int>> &curA) {
    for (int x : b) for (int y : H[x])
        if (x <= y && find(b.begin(), b.end(), y) != b.end())
            curH.push_back(make_pair(x, y));
    for (int x : b) for (pii p : A[x]) {
        int y = p.first; int w = p.second;
        if (x <= y && find(b.begin(), b.end(), y) != b.end())
            curA.push_back(make_pair(make_pair(x, y), w));
    }
}
void getRelevantEdges(const vector <int> &d, const vector <int> &b, vector <pii> &curH, vector <pair <pii, int>> &curA) {
    getAllEdges(d, curH, curA);
    for (int x : d) for (int y : H[x])
        if (find(b.begin(), b.end(), y) != b.end())
            curH.push_back(make_pair(x, y));
    for (int x : d) for (pii p : A[x]) {
        int y = p.first; int w = p.second;
        if (find(b.begin(), b.end(), y) != b.end())
            curA.push_back(make_pair(make_pair(x, y), w));
    }
}

void DFS(int u, vector <int> &f) {
    vector <pii> curH;
    vector <pair <pii, int>> curA;

    mark[u] = true, f.resize(state[Bag[u].size()].size(), 0);

    if (bagType[u] == 0) {                                    // Leaf Bag
        getAllEdges(Bag[u], curH, curA);
        for (int i = 0; i < (int)f.size(); i++) {
            lnt s = state[Bag[u].size()][i];
            unordered_map <int, int> alloc = getAlloc(s, Bag[u]);
            for (pii &e : curH)
                if (alloc[e.first] == alloc[e.second])
                    { f[i] = -1; break; }
            if (f[i] == -1) continue;
            for (pair <pii, int> &e : curA)
                if (alloc[e.first.first] == alloc[e.first.second])
                    f[i] += e.second;
        }
    } else if (bagType[u] == 1) {
        int v = Tree[u][0];
        if (Bag[u].size() > Bag[v].size()) {            // Introduce Bag
            vector <int> delta;
            for (int x : Bag[u])
                if (find(Bag[v].begin(), Bag[v].end(), x) == Bag[v].end())
                    delta.push_back(x);
            getRelevantEdges(delta, Bag[v], curH, curA);
            vector <int> g; DFS(v, g);
            for (int i = 0; i < (int)f.size(); i++) {
                lnt s = state[Bag[u].size()][i];
                unordered_map <int, int> alloc = getAlloc(s, Bag[u]);
                for (pii &e : curH)
                    if (alloc[e.first] == alloc[e.second])
                        { f[i] = -1; break; }
                if (f[i] == -1) continue;
                lnt t = getCompatible(alloc, Bag[v]);
                int j = sta2idx[Bag[v].size()][t];
                f[i] = g[j];
                if (f[i] == -1) continue;
                for (pair <pii, int> &e : curA)
                    if (alloc[e.first.first] == alloc[e.first.second])
                        f[i] += e.second;
            }
        } else if (Bag[u].size() < Bag[v].size()) {     // Forget Bag
            vector <int> g; DFS(v, g);
            fill(f.begin(), f.end(), -1);
            witness[u].resize((int)f.size(), -1);
            for (int j = 0; j < (int)g.size(); j++) {
                lnt t = state[Bag[v].size()][j];
                unordered_map <int, int> alloc = getAlloc(t, Bag[v]);
                lnt s = getCompatible(alloc, Bag[u]);
                int i = sta2idx[Bag[u].size()][s];
                if (f[i] < g[j]) f[i] = g[j], witness[u][i] = j;
            }
        } else DFS(v, f);                               // Dummy Bag
    } else {                                            // Merge Bag
        // for (int v : Tree[u]) if (Bag[u] != Bag[v])
        //     cerr << "E: Merge bag " << u << " is different from child " << v << "!\n";
        getAllEdges(Bag[u], curH, curA);
        for (int v : Tree[u]) {
            vector <int> g; DFS(v, g);
            for (int i = 0; i < (int)f.size(); i++)
                if (f[i] == -1 || g[i] == -1) f[i] = -1;
                else f[i] += g[i];
        }
        for (int i = 0; i < (int)f.size(); i++) if (f[i] != -1) {
            lnt s = state[Bag[u].size()][i];
            unordered_map <int, int> alloc = getAlloc(s, Bag[u]);
            for (pair <pii, int> &e : curA)
                if (alloc[e.first.first] == alloc[e.first.second])
                    f[i] -= e.second*(bagType[u]-1);
        }
    }
    /*
    cerr << "Bag " << u << ": ";
    for (int x : Bag[u]) cerr << x << " "; cerr << endl;
    cerr << bagType[u] << " " << *max_element(f.begin(), f.end()) << endl;
    */
}

void traceCol(int u, int i, int fa) {
    lnt s = state[Bag[u].size()][i];
    unordered_map <int, int> alloc = getAlloc(s, Bag[u]);
    vector <int> colMap(numReg, -1);
    vector <bool> isUsed(numReg, false);
    for (pii p : alloc) if (color[p.first] != -1)
        colMap[p.second] = color[p.first], isUsed[color[p.first]] = true;
    for (pii p : alloc) if (colMap[p.second] == -1)
        for (int c = 0; c < numReg; c++) if (!isUsed[c])
            { colMap[p.second] = c, isUsed[c] = true; break; }
    for (pii p : alloc) color[p.first] = colMap[p.second];
    if (witness.find(u) != witness.end()) {
        for (int v : Tree[u]) if (v != fa)
            traceCol(v, witness[u][i], u);
    } else {
        for (int v : Tree[u]) if (v != fa) {
            lnt t = getCompatible(alloc, Bag[v]);
            int j = sta2idx[Bag[v].size()][t];
            traceCol(v, j, u);
        }
    }
}

int main() {
    bool isValid = loadGraph(); genDecomp();
    if (!isValid) { puts("-1"); return 0; }
    clock_t prev = clock();
    niceDecomp();
    // printTree();
    // printTreeStat();
    getStates(0, 0, 0, 1);
   
    mark.resize(numBag+1), color.resize(numVar+1, -1);
    int ans = 0;
    for (int i = 1; i <= numBag; i++) if (!mark[i]) {
        vector <int> dp; DFS(i, dp);
        vector <int>::iterator mx = max_element(dp.begin(), dp.end());
        if (ans == -1 || *mx == -1) ans = -1;
        else traceCol(i, (int)distance(dp.begin(), mx), 0), ans += *mx;
    }

    if (ans == -1) { puts("-1"); return 0; }

    double runtime = 1.0*(clock()-prev)/CLOCKS_PER_SEC+SOLVER_TIME_LIMIT;

    int totalWeight = 0, validWeight = 0;
    for (int u = 1; u <= numVar; u++)
        for (int v : H[u]) if (color[u] == color[v])
            cerr << "E: " << u << " and " << v << " are of the same color!\n";
    for (int u = 1; u <= numVar; u++)
        for (pii p : A[u]) if (p.first >= u) {
            totalWeight += p.second;
            if (color[u] == color[p.first])
                validWeight += p.second;
        }
    if (validWeight != ans)
        cerr << "E: Answer doesn't match allocation!\n";
    cout << ans << " " << totalWeight << " ";
    cout << runtime << " " << SOLVER_TIME_LIMIT << endl;
    for (int i = 1; i <= numVar; i++) cout << color[i] << " "; cout << endl;
    return 0;
}
